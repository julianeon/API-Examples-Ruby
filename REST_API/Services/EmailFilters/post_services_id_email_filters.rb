require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
service_id='PPVUPKM'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/services/#{service_id}/email_filters"
token_string="Token token=#{api_token}"

data = {
       email_filter:
       {  body_mode:"no-match",
          body_regex:"sev 3"}
       }

response= HTTParty.post(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
