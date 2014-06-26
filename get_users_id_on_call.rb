require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
user_id='PDKNMCR'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users/#{user_id}/on_call"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
