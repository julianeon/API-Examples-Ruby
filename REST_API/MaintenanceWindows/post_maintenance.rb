#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
requester_id='P3Y4319'

ENDPOINT="https://#{subdomain}.pagerduty.com/api/v1/maintenance_windows/"
ENDPOINT << "?requester_id=#{requester_id}"
token_string="Token token=#{api_token}"

data = {
       maintenance_window:
       {
       start_time: "2014-07-01T13:00:00-04:00Z",
       end_time: "2014-07-03T14:00:00-04:00Z",
       description: "Upgrading to new hemingway",
       service_ids: [
          "P74EUX5"
       ]
       }
      }
response = HTTParty.post(ENDPOINT, 
                         :body => data.to_json,
                         :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
