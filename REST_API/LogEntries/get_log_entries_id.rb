require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
log_id='P4M9NI8'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/log_entries/#{log_id}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
