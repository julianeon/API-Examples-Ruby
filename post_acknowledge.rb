require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
service_key='CHANGE_THIS'

endpoint="https://events.pagerduty.com/generic/2010-04-15/create_event.json"
token_string="Token token=#{api_token}"

data = {
       service_key: service_key,
       incident_key: "srv01/HTTP",
       event_type: "acknowledge",
       description: "Andrew now working on the problem.",
       details: "work started: 2010-06-10 05:43" 
       }

response= HTTParty.post(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
