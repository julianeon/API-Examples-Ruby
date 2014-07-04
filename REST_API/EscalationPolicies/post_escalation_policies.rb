#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/escalation_policies"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  name: 'Alphabet Policy',
  escalation_rules: [
    {
      escalation_delay_in_minutes: 20,
      targets: [
        {
          type: 'user',
          id: 'PPSFHH7'
        }
      ]
    }
  ],
  num_loops: 4
}

response = HTTParty.post(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
