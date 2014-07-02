require 'httparty'
 
subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
escalation_id='P1UHZGM'
endpoint="https://#{subdomain}.pagerduty.com/api/v1/escalation_policies/#{escalation_id}/escalation_rules"
token_string="Token token=#{api_token}"

data = {
       escalation_rules:[
       { 
       id:"PVQ1NPV",
       escalation_delay_in_minutes:10,
       rule_object:
         {
         id:"P1CYCHE",
         name:"Ops Weekly",
         type:"schedule"
         },
         targets:[
           {  
           id:"P1CYCHE",
           name:"Ops Weekly",
           type:"schedule"
           }
         ]
       }
       ]
     }
 
response = HTTParty.put(endpoint,  
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
puts response.body
