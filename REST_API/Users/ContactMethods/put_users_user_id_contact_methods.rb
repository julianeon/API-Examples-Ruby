require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
user_id='P7BOI8S'
contact_method_id='PAN6SYJ'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users/#{user_id}/contact_methods/#{contact_method_id}"
token_string="Token token=#{api_token}"

data = {contact_method:{type:"phone",address:"5558888888",label:"Island Lair",country_code:"1"}}
       
response = HTTParty.put(endpoint, 
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
