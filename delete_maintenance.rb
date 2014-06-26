require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
window_id='PL52PNQ'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/maintenance_windows/#{window_id}"
token_string="Token token=#{api_token}"

response = HTTParty.delete(endpoint, 
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
