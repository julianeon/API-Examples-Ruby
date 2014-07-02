require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
user_id='PPROI4P'
notification_rule_id='PWKA4EQ'
contact_method_id='PNDA501'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users/#{user_id}/notification_rules/#{notification_rule_id}"
token_string="Token token=#{api_token}"

data = {
       notification_rule: {
         contact_method_id:contact_method_id,
         start_delay_in_minutes:5
         }
       }

response = HTTParty.put(endpoint, 
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
