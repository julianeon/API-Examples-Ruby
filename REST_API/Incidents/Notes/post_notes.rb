#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
INCIDENT_ID = 'PWTXP2C'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/incidents/" \
           "#{INCIDENT_ID}/notes/"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  requester_id: 'P4RKUT9',
  note: { content: 'New Note' }
}

response = HTTParty.post(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
