require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
user_id='PPROI4P'
notification_rule_id='PNDA501'

endpoint="https://#{subdomain}.pagerduty.com/api/v1/users/#{user_id}/notification_rules"
token_string="Token token=#{api_token}"

data = {
       notification_rule: {
         contact_method_id:notification_rule_id,
         start_delay_in_minutes:4
         }
       }

response = HTTParty.post(endpoint, 
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
