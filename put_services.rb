require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
service_id='PPYL9PR'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/services/#{service_id}"

token_string="Token token=#{api_token}"

data =
      {    
      service: {
        name: "My New Name",
        description: "Brand New Description",
        escalation_policy_id: "PBL9SYQ"
      }
      }

response = HTTParty.put(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
