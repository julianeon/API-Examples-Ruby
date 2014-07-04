#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PPYL9PR'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/services/#{service_id}"

TOKEN_STRING = "Token token=#{api_token}"

data = {
  service: {
    name: 'My New Name',
    description: 'Brand New Description',
    escalation_policy_id: 'PBL9SYQ'
  }
}

response = HTTParty.put(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
