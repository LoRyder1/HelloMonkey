require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

get '/hello-monkey' do
  Twilio::TwiML::Response.new do |r|
    r.Say 'How Many Monkeys Jumping on the Tree'
  end.text
end
