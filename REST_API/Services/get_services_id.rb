#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PBPBH11'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/services/#{SERVICE_SID}"
TOKEN_STRING = "Token token=#{api_token}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
