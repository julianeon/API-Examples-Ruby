#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/incidents"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  requester_id: 'P3Y4319',
  incidents: [
    {
      id: 'PP71KD4', status: 'resolved'
    }
  ]
}

response = HTTParty.put(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
