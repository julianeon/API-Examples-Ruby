require 'httparty'

subdomain='CHANGE_THIS'
schedule_id='CHANGE_THIS'
api_token='CHANGE_THIS'
endpoint="https://#{subdomain}.pagerduty.com/api/v1/escalation_policies"
token_string="Token token=#{api_token}"
 
data= {    
      name: "Alphabet Policy", 
      escalation_rules:  [
        { 
          escalation_delay_in_minutes: 20, 
          targets: [
            { 
              type: "user", 
              id: "PPSFHH7" 
            } 
          ]
        } 
      ],
      num_loops: 4
    }
response = HTTParty.post(endpoint,  
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
puts response.body
