#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'P1E178O'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/services/#{SERVICE_ID}"
TOKEN_STRING = "Token token=#{API_KEY}"

response = HTTParty.delete(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
