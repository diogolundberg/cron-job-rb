three_minutes = I18n.t('three_minutes', time: Time.now.strftime("%d/%m/%Y %H:%M"))
body = { "text": three_minutes }.to_json
headers = {'Content-Type': "application/json"}
Typhoeus.post(ENV["SLACK_WEBHOOK"], headers: headers, body: body)
