#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SCHEDULE_ID = 'PK6D3G2'
OVERRIDE_ID = 'PYVKJP1'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/schedules/" \
           "#{SCHEDULE_ID}/overrides/#{OVERRIDE_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.delete(
  endpoint,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
