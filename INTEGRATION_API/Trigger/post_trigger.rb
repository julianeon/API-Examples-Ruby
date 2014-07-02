require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
service_key='CHANGE_THIS'

endpoint="https://events.pagerduty.com/generic/2010-04-15/create_event.json"
token_string="Token token=#{api_token}"

data = {
       service_key: service_key,
       incident_key: "srv01/HTTP",
       event_type: "trigger",
       description: "FAILURE for production/HTTP on machine srv01.acme.com",
       client: "Sample Monitoring Service",
       client_url: "https://monitoring.service.com",
       details: "ping time: 1500ms, load avg: 0.5" 
       }

response= HTTParty.post(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
