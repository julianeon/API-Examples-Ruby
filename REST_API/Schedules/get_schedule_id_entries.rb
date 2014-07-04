#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SCHEDULE_ID = 'PU558LC'
USER_ID = 'PMUQ3OT'
SINCE_DATE = '2014-05-02T01:00Z'
UNTIL_DATE = '2014-05-05T01:00Z'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/schedules/" \
           "#{SCHEDULE_ID}/entries?since=#{SINCE_DATE}&until=" \
           "#{UNTIL_DATE}&user_id=#{USER_ID}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
