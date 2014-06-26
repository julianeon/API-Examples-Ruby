require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
service_id='PJN9IRR'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/services/#{service_id}/regenerate_key"
token_string="Token token=#{api_token}"

response= HTTParty.post(endpoint, 
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
