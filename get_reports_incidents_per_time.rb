require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
since_date="2014-04-01T01:00Z"
until_date="2014-04-05T01:00Z"
timeframe="daily"

endpoint="https://#{subdomain}.pagerduty.com/api/v1/reports/incidents_per_time/"
endpoint << "?since=#{since_date}&until=#{until_date}"
endpoint << "&rollup=#{timeframe}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
