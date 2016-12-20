require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

get '/hello-monkey' do
  people = {
    '+12099883115' => 'Lovinder',
    '+14158675309' => 'Vladimir Putin',
    '+14158675310' => 'Angela Merkel',
    '+14158675311' => 'Barack Obama',
    '+14158675312' => 'Donald Trump',
  }

  name = people[params['From']] || 'Monkey'

  Twilio::TwiML::Response.new do |r|
    r.Say "How Many Monkeys Jumping on the Tree #{name}"
    r.Play 'http://demo.twilio.com/hellomonkey/monkey.mp3'
    r.Gather :numDigits => '1', :action => '/hello-monkey/handle-gather', :method => 'get' do |g|
      g.Say 'To speak to a real monkey, press 1.'
      g.Say 'Press any other key to start over.'
    end
  end.text
end

get '/hello-monkey/handle-gather' do
  redirect '/hello-monkey' unless params['Digits'] == '1'
  Twilio::TwiML::Response.new do |r|
    r.Dial '+13105551212'
    r.Say 'The call failed or the remote party hung up. Goodbye.'
  end.text
end
