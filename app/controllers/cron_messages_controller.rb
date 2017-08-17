class CronMessagesController < ApplicationController

  def index
    body = { "text": message }.to_json
    headers = {'Content-Type': "application/json"}
    Typhoeus.post(ENV["SLACK_WEBHOOK"], headers: headers, body: body)
  end

  def message
    @message ||= t('message', time: Time.now.strftime("%d/%m/%Y %H:%M"))
  end

end
