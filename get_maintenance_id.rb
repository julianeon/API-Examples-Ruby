require 'httparty'
require 'json'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
maintenance_window_id='P1DQUDR'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/maintenance_windows/#{maintenance_window_id}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
