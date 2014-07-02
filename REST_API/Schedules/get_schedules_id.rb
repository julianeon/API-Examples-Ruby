require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
schedule_id='PUV0FUY'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/schedules/#{schedule_id}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
