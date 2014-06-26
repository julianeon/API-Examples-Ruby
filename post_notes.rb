require 'httparty'
require 'json'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
incident_id='PWTXP2C'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/incidents/#{incident_id}/notes/"
token_string="Token token=#{api_token}"

data = {
       requester_id:"P4RKUT9",
       note:
         {
         content:"New Note"
         }
       }
response = HTTParty.post(endpoint, 
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
