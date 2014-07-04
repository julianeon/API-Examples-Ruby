#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SERVICE_ID = 'PPVUPKM'
EMAIL_FILTER_ID = 'P753H50'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/services/#{SERVICE_ID}" \
           "/email_filters/#{EMAIL_FILTER_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.delete(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
