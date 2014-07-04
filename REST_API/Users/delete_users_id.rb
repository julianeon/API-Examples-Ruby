#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
USER_ID = 'P2ML0HR'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/users/#{USER_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.delete(
  endpoint,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)
puts response.body
