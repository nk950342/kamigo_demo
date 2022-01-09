require 'line/bot'

class AlarmService
  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = '4633dfc2d135210a48c4bd5323de7e91'
      config.channel_token = 'fDjZzlME5rGVtIQvTHbhtWZefMWlbQMz0FWStRca7NQSoL6mw9oboq+a24Kd2C0TQIn6puvsmayJNj1Mgnw6noHTErTODjV/tKGEqzO1LRduGORt/XTi7yqxPAqtwu4QzLt0XUCHOJ/IBJa9xSe3ygdB04t89/1O/w1cDnyilFU='
    end
  end

  def run
    message = {
      type: "text",
      text: "現在時間：#{Time.current} 要喝水摟"
    }
    client.push_message('Ude2a857effa7c419663e804bacff3ed8', message)
  end
end