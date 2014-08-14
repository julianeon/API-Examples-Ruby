#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
window_id='PL52PNQ'

ENDPOINT="https://#{subdomain}.pagerduty.com/api/v1/maintenance_windows/#{window_id}"
token_string="Token token=#{api_token}"

data = {
       start_time: "2014-07-07T13:00:00-04:00Z",
       end_time: "2014-07-09T14:00:00-04:00Z",
       description: "Description goes here",
       service_ids: [
          "P74EUX5"
       ]
       }

response = HTTParty.put(ENDPOINT, 
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
