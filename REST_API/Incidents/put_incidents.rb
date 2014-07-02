require 'httparty'

subdomain='CHANGE_THIS'
escalation_id='PITG119'
rules_id="PDBEMQN"
api_token='CHANGE_THIS'
endpoint="https://#{subdomain}.pagerduty.com/api/v1/incidents"
token_string="Token token=#{api_token}"

data= {
       requester_id: "P3Y4319",
       incidents: [
         {
         id: "PP71KD4",
         status: "resolved"
         }
       ]
       }

         

response = HTTParty.put(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
