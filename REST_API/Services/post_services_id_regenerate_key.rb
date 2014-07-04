#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PJN9IRR'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/services/" \
           "#{service_id}/regenerate_key"
TOKEN_STRING = "Token token=#{api_token}"

response = HTTParty.post(
  endpoint,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
