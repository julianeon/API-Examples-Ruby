#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

API_TOKEN = 'CHANGE_THIS'
SERVICE_KEY = 'CHANGE_THIS'

ENDPOINT = 'https://events.pagerduty.com/generic/2010-04-15/create_event.json'
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  service_key: SERVICE_KEY,
  incident_key: 'srv01/HTTP',
  event_type: 'trigger',
  description: 'FAILURE for production/HTTP on machine srv01.acme.com',
  client: 'Sample Monitoring Service',
  client_url: 'https://monitoring.service.com',
  details: 'ping time: 1500ms, load avg: 0.5'
}

response = HTTParty.post(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
