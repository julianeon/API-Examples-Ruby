require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
user_id='P2ML0HR'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users/#{user_id}"
token_string="Token token=#{api_token}"

response= HTTParty.delete(endpoint, 
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
