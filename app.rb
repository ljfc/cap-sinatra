require 'sinatra'

class App < Sinatra::Base
  get '/' do
    'Hello from Sinatra'
  end

  get '/other' do
    'Other'
  end
end
