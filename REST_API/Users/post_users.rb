#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
REQUESTER_ID = 'P3Y4319'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/users"
TOKEN_STRING = "Token token=#{api_token}"

data = {
  role: 'admin',
  name: 'Bart Simpson',
  email: 'bart@example.com',
  requester_id: REQUESTER_ID
}

response = HTTParty.post(
  endpoint,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
