require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
since_date="2014-04-01T01:00Z"
until_date="2014-04-05T01:00Z"
status="resolved"

endpoint="https://#{subdomain}.pagerduty.com/api/v1/incidents/count"
endpoint << "?since=#{since_date}&until=#{until_date}&status=#{status}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
