class CronMessagesController < ApplicationController

  def index
    @url = ENV["SLACK_WEBHOOK"]
    @body = { "text": "Assess how to cron job" }
    headers = {'Content-Type': "application/json"}
    Typhoeus.post(@url, headers: headers, body: @body.to_json)
  end

end
