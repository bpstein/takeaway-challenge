require 'sms' 

describe Sms do 

  subject(:sms)   {described_class.new(config, client: client)}
  let(:client)    {double(:client, messages: messages)}
  let(:messages)  {spy(:messages)}
  let(:config) do 
    {
      account_sid: '111',
      auth_token: '2eablka',
      from: '+444',
      to: '+6134',
      body: 'Thank you! Your order wil be delivered before %s'
    }
  end

  it "sends an SMS with the estimated time of delivery" do
    message_args = {
      from: config[:from],
      to: config[:to],
      body: "Thank you! Your order will be delivered before 18:52"
    } 
    allow(Time).to receive(:now).and_return(Time.parse("17:52"))
    expect(messages).to receive(:create).with(message_args)
    sms.deliver 
  end

end