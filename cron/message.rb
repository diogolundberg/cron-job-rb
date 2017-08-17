message = I18n.t('message', time: Time.now.strftime("%d/%m/%Y %H:%M"))
body = { "text": message }.to_json
headers = {'Content-Type': "application/json"}
Typhoeus.post(ENV["SLACK_WEBHOOK"], headers: headers, body: body)
