#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PPVUPKM'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/services/" \
           "#{SERVICE_ID}/email_filters"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  email_filter: {
    body_mode: 'no-match',
    body_regex: 'sev 3'
  }
}

response = HTTParty.post(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
