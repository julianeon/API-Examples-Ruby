#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

subdomain = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
ESCALATION_ID = 'PITG119'
RULES_ID = 'PDBEMQN'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/escalation_policies/" \
           "#{ESCALATION_ID}/escalation_rules/#{RULES_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.delete(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
