require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
schedule_id='PU558LC'
user_id='PMUQ3OT'
since_date="2014-05-02T01:00Z"
until_date="2014-05-05T01:00Z"

endpoint="https://#{subdomain}.pagerduty.com/api/v1/schedules/#{schedule_id}/entries"
endpoint << "?since=#{since_date}&until=#{until_date}"
endpoint << "&user_id=#{user_id}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
