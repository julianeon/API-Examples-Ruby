#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
ESCALATION_ID = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/escalation_policies/" \
           "#{ESCALATION_ID}/escalation_rules"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  escalation_rule: {
    id: 'PNTPYK0',
    escalation_delay_in_minutes: 10,
    rule_object: {
      id: 'PPSFHH7',
      name: 'Bob Smith',
      type: 'user',
      email: 'bob@acme.com',
      time_zone: 'Eastern Time (US & Canada)',
      color: 'red'
    },
    targets: [
      {
        id: 'PPSFHH7',
        name: 'Bob Smith',
        type: 'user',
        email: 'bob@acme.com',
        time_zone: 'Eastern Time (US & Canada)',
        color: 'red'
      }
    ]
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
