require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
user_id='P7BOI8S'
contact_method_id='P8Y66QQ'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users/#{user_id}/contact_methods/#{contact_method_id}"
token_string="Token token=#{api_token}"

response = HTTParty.get(endpoint, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
