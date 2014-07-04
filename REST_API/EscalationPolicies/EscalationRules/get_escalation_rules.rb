#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
ESCALATION_ID = 'PITG119'
API_TOKEN = 'CHANGE_THIS'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/escalation_policies/" \
           "#{ESCALATION_ID}/escalation_rules"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
