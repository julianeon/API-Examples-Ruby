require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
schedule_id='PINDC8M'
endpoint="https://#{subdomain}.pagerduty.com/api/v1/schedules/#{schedule_id}"
token_string="Token token=#{api_token}"
 
response = HTTParty.delete(endpoint,  
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
puts response.body
