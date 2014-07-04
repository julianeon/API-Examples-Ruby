#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

subdomain = 'CHANGE_THIS'
api_token = 'CHANGE_THIS'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/escalation_policies" \
           "/on_call/"
TOKEN_STRING = "Token token=#{api_token}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
