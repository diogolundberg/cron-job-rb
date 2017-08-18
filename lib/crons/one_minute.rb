one_minute = I18n.t('one_minute', time: Time.now.strftime("%d/%m/%Y %H:%M"))
body = { "text": one_minute }.to_json
headers = {'Content-Type': "application/json"}
Typhoeus.post(ENV["SLACK_WEBHOOK"], headers: headers, body: body)
