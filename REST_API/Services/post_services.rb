#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/services"
TOKEN_STRING = "Token token=#{API_TOKEN}"

data = {
  service: {
    name: 'default-email',
    description: 'default email service',
    escalation_policy_id: 'PIJ90N7',
    type: 'generic_email',
    service_key: 'default-email'
  }
}

response = HTTParty.post(
  endpoint,
  body: data.to_json,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
