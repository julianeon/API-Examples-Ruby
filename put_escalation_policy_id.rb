require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
escalation_id='PITG119'
rules_id="PDBEMQN"
endpoint="https://#{subdomain}.pagerduty.com/api/v1/escalation_policies/#{escalation_id}/escalation_rules/#{rules_id}"
token_string="Token token=#{api_token}"

data= {escalation_rule:{id:"PDBEMQN",escalation_delay_in_minutes:10,rule_object:{id:"PSPZDG1",name:"Hafiz",type:"user",email:"fake@email.com",time_zone:"Hawaii",color:"sea-green"},targets:[{id:"PSPZDG1",name:"Hafiz",type:"user",email:"fake@email.com",time_zone:"Hawaii",color:"sea-green"}]}}

response = HTTParty.put(endpoint, 
                        :body => data.to_json,
                        :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
