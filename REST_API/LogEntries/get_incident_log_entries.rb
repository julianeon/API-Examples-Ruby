require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
incident_id='PWTXP2C'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/incidents/#{incident_id}/log_entries/"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
