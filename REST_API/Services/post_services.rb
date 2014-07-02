require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/services"

token_string="Token token=#{api_token}"

data =
      {    
      service: {
        name: "default-email",
        description: "default email service",
        escalation_policy_id: "PIJ90N7",
        type: "generic_email",
        service_key: "default-email"
      }
      }

response = HTTParty.post(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
