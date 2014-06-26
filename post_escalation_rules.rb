require 'httparty'

subdomain='CHANGE_THIS'
escalation_id='CHANGE_THIS'
api_token='CHANGE_THIS'
endpoint="https://#{subdomain}.pagerduty.com/api/v1/escalation_policies/#{escalation_id}/escalation_rules"
token_string="Token token=#{api_token}"
 
data= {    
  escalation_rule: {
    id: "PNTPYK0",
    escalation_delay_in_minutes: 10,
    rule_object: {
      id: "PPSFHH7",
      name: "Bob Smith",
      type: "user",
      email: "bob@acme.com",
      time_zone: "Eastern Time (US & Canada)",
      color: "red"
    },
    targets: [
      {
        id: "PPSFHH7",
        name: "Bob Smith",
        type: "user",
        email: "bob@acme.com",
        time_zone: "Eastern Time (US & Canada)",
        color: "red"
      }
    ]
  }
}

response = HTTParty.post(endpoint,  
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
puts response.body
