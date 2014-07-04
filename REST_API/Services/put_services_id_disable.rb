#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PSWE3MC'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/services/" \
           "#{service_id}/disable"
TOKEN_STRING = "Token token=#{api_token}"

data = { requester_id: 'PMUQ3OT' }

response = HTTParty.put(
  endpoint,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
