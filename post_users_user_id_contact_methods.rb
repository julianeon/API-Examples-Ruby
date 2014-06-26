require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
user_id='P7BOI8S'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users/#{user_id}/contact_methods"
token_string="Token token=#{api_token}"

data = {contact_method:{type:"phone",address:"5551112222",label:"Island Lair",country_code:"1"}}
       
response = HTTParty.post(endpoint, 
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
