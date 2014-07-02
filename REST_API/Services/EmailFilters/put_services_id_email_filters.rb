require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
service_id='PPVUPKM'
email_filter_id='P753H50'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/services/#{service_id}/email_filters/#{email_filter_id}"
token_string="Token token=#{api_token}"

data = {
       email_filter:
       {  from_email_mode:"match",
          from_email_regex:"[rR]yan"}
       }

response= HTTParty.put(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
