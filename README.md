# Voice TwiML Ruby app

The goal of this app is to demonstrate how Twilio lets you control phone calls using Twilio Markup Language(TwiML)

# How it works

When a new phone call is initiated using your twilio phone number, Twilio makes an HTTP GET or POST to your web server (as specified by your app). If you happen to use HTTP POST, Twilio passes parameters as form-encoded variables in the body of the POST. If you happen to use HTTP GET, parameters are passed in the URL query string. 

### Getting Started

  1. clone the program using:
  ```
  git clone https://github.com/LoRyder1/HelloMonkey.git
  ```

  2. navigate to repository
  ```
  cd HelloMonkey
  ```

  3. install required gems using bundler
  ```
  bundle install
  ```

  4. get the app up and running
  ```
  ruby twiml-quickstart.rb
  ```
  
  5. in a new terminal window use ngrok to use secure tunnel to localhost - exposes a local server behind a NAT or firewall to the internet. 
  ```
  ngrok http 4567
  ```

## Built with

* Ruby - is a dynamic, reflective, object-oriented, general-purpose programming language.
* Sinatra - small and flexible web framwork in Ruby
* twilio ruby - a module for using the Twilio REST API and generating valid TwiML
  
