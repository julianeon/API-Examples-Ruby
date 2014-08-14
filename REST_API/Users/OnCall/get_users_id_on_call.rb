#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
USER_ID = 'PDKNMCR'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/users/#{USER_ID}/on_call"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
