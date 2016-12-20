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
  end.text
end
