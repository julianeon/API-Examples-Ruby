require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
schedule_id='PK6D3G2'
override_id='PYVKJP1'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/schedules/#{schedule_id}/overrides/#{override_id}"
token_string="Token token=#{api_token}"

response = HTTParty.delete(endpoint, 
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
