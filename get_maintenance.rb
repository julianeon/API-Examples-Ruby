require 'httparty'
require 'json'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/maintenance_windows/"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
