#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
WINDOW_ID = 'PL52PNQ'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/maintenance_windows/" \
           "#{WINDOW_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.delete(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
