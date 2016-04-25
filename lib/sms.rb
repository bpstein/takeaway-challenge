class Sms

  TIME_FORMAT = "%M:%M"
  SECONDS_IN_HOUR = 3600

  def initialize(config, client: nil)
    @client = client || Twilio::REST::Client.new(config[:account_sid], config[:auth_token])
    @config = config
  end

  def deliver 
    client.messages.create(message_args)
  end

  private 

  attr_reader :client, :config

  def message_args
    {
      from: config[:from],
      to: config[:to],
      body: config[:body] % delivery_time
    }
  end

  def delivery_time 
    (Time.now + SECONDS_IN_HOUR).strftime(TIME_FORMAT)
  end

end

# def send(sms)
#   account_sid = "AC9127abd443337cd2d2ad3f75a1fad9b0"
#   auth_token = "b6e88f89b1d3a190682275ff36868b08"
#   client = Twilio::REST::Client.new account_sid, auth_token
#   from = "+61282948480"
#   client.account.messages.create(
#     :from => from, 
#     :to => "+61403520190"
#     :body => sms
#   )
# end