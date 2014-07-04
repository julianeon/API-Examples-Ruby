#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
INCIDENT_ID = 'PCNXB28'
USER_ID = 'P3Y4319'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/incidents/" \
           "#{INCIDENT_ID}/acknowledge?requester_id=#{USER_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.put(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
