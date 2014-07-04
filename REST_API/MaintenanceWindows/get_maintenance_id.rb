#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'
require 'json'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
MAINTENANCE_WINDOW_ID = 'P1DQUDR'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/maintenance_windows/" \
           "#{MAINTENANCE_WINDOW_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
