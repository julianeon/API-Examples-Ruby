#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
USER_ID = 'PPROI4P'
NOTIFICATION_RULE_ID = 'PWKA4EQ'
CONTACT_METHOD_ID = 'PNDA501'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/users/#{USER_ID}" \
           "/notification_rules/#{NOTIFICATION_RULE_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  notification_rule: {
    contact_method_id: CONTACT_METHOD_ID,
    start_delay_in_minutes: 5
  }
}

response = HTTParty.put(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
