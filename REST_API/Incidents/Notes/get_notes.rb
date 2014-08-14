#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

subdomain='CHANGE_THIS'
api_token='CHANGE_THIS'
incident_id='PWTXP2C'

ENDPOINT="https://#{subdomain}.pagerduty.com/api/v1/incidents/#{incident_id}/notes/"
token_string="Token token=#{api_token}"

response = HTTParty.get(ENDPOINT, :headers => { "Content-Type" => 'application/json', "Authorization" => token_string})
text= response.body
puts text
