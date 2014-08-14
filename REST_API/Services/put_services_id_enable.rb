#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PSWE3MC'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/services/" \
           "#{service_id}/enable"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = { requester_id: 'PMUQ3OT' }

response = HTTParty.put(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
