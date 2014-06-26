require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
requester_id='P3Y4319'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users"
token_string="Token token=#{api_token}"

data = {
       role: "admin",
       name: "Bart Simpson",
       email: "bart@example.com",
       requester_id: requester_id,
       }

response= HTTParty.post(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
