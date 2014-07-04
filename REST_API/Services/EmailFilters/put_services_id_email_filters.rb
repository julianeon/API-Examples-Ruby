#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PPVUPKM'
EMAIL_FILTER_ID = 'P753H50'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/services/#{service_id}" \
           "/email_filters/#{email_filter_id}"
TOKEN_STRING = "Token token=#{api_token}"

data = {
  email_filter: {
    from_email_mode: 'match',
    from_email_regex: '[rR]yan'
  }
}

response = HTTParty.put(
  endpoint,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
