#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
ESCALATION_ID = 'P1UHZGM'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/escalation_policies/" \
           "#{ESCALATION_ID}/escalation_rules"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  escalation_rules: [
    {
      id: 'PVQ1NPV',
      escalation_delay_in_minutes: 10,
      rule_object: {
        id: 'P1CYCHE',
        name: 'Ops Weekly',
        type: 'schedule'
      },
      targets: [
        {
          id: 'P1CYCHE',
          name: 'Ops Weekly',
          type: 'schedule'
        }
     ]
    }
  ]
}

response = HTTParty.put(
  ENDPOINT,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)
puts response.body
