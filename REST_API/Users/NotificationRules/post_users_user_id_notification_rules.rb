#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
USER_ID = 'PPROI4P'
NOTIFICATION_RULE_ID = 'PNDA501'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/users/" \
           "#{USER_ID}/notification_rules"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  notification_rule: {
    contact_method_id: NOTIFICATION_RULE_ID,
    start_delay_in_minutes: 4
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
