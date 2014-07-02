require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
service_id='PSWE3MC'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/services/#{service_id}/disable"

token_string="Token token=#{api_token}"

data =
      {    
      requester_id: "PMUQ3OT"
      }

response = HTTParty.put(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
