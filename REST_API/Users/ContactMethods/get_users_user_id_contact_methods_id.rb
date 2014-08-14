#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
USER_ID = 'P7BOI8S'
CONTACT_METHOD_ID = 'P8Y66QQ'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/users/#{USER_ID}" \
           "/contact_methods/#{CONTACT_METHOD_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
