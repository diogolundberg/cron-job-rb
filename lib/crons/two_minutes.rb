two_minutes = I18n.t('two_minutes', time: Time.now.strftime("%d/%m/%Y %H:%M"))
body = { "text": two_minutes }.to_json
headers = {'Content-Type': "application/json"}
Typhoeus.post(ENV["SLACK_WEBHOOK"], headers: headers, body: body)
