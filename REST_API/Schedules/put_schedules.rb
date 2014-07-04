#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SCHEDULE_ID = 'PUV0FUY'
ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/schedules/#{schedule_id}"
TOKEN_STRING = "Token token=#{api_token}"

data = { name: '3day' }

response = HTTParty.put(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)
puts response.body
