require 'httparty'

subdomain='CHANGE_THIS'
schedule_id='PHKTVZ4'
api_token='CHANGE_THIS'
endpoint="https://#{subdomain}.pagerduty.com/api/v1/escalation_policies/"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
