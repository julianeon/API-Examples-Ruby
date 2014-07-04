#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
INCIDENT_ID = 'PWTXP2C'
USER_ID = 'P3Y4319'
ASSIGN_TO_USER = 'P4RKUT9'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/incidents/" \
           "#{INCIDENT_ID}/reassign?requester_id=#{USER_ID}" \
           "&assigned_to_user=#{ASSIGN_TO_USER}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.put(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
