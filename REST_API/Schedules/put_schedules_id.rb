#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SCHEDULE_ID = 'POP0QMD'

ENDPOINT = "https://#{subdomain}.pagerduty.com/api/v1/schedules/#{schedule_id}"
TOKEN_STRING = "Token token=#{api_token}"

data = {
  since: '2014-08-05T00:00:00',
  overflow: 1,
  until: '2014-08-19T00:00:00',
  schedule: {
    schedule_layers: [
      {
        start: '2014-08-05T00:00:00',
        users: [
          {
            user: {
              id: 'PDKNMCR'
            },
            member_order: 1
          },
          {
            user: {
              id: 'PY050V0'
            },
            member_order: 2
          }
        ],
        restriction_type: 'Daily',
        rotation_virtual_start: '2014-08-05T00:00:00',
        priority: 0,
        rotation_turn_length_seconds: 604_800,
        end: '2014-08-19T00:00:00',
        restrictions: [
          {
            duration_seconds: 43_200,
            start_time_of_day: '00:00:00'
          }
        ],
        id: 'PP3RRD7',
        name: 'Schedule Layer 1'
      },
      {
        start: '2014-08-05T00:00:00',
        users: [
          {
            user: {
              id: 'PS7KGP7'
            },
            member_order: 1
          },
          {
            user: {
              id: 'PSUHY8X'
            },
            member_order: 2
          },
          {
            user: {
              id: 'P8MWLT4'
            },
            member_order: 3
          }
        ],
        restriction_type: 'Daily',
        rotation_virtual_start: '2014-08-05T00:00:00',
        rotation_turn_length_seconds: 86_400,
        priority: 1,
        restrictions: [
          {
            duration_seconds: 2200,
            start_time_of_day: '00:00:00'
          }
        ],
        end: '2014-08-19T00:00:00',
        id: 'P18UPZ4',
        name: 'Schedule Layer 2'
      }
    ],
    time_zone: 'Eastern Time (US & Canada)',
    id: 'null',
    name: 'API-Generated Primary On-Call Schedule'
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
