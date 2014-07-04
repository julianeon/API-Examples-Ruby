#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SINCE_DATE = '2014-04-01T01:00Z'
UNTIL_DATE = '2014-04-05T01:00Z'
TIMEFRAME = 'daily'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/reports/" \
           "incidents_per_time/?since=#{SINCE_DATE}&until=#{UNTIL_DATE}" \
           "&rollup=#{TIMEFRAME}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
