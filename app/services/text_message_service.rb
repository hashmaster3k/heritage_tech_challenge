class TextMessageService
  attr_reader :phone, :message

  def initialize(phone, message)
    @phone = phone
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: ENV['twilio_phone_number'],
      to: phone,
      body: message
    })
  end
end
