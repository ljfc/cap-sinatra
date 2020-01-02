require 'sinatra'

class App < Sinatra::Base
  get '/' do
    'Changed from Sinatra'
  end

  get '/other' do
    'Other'
  end
end
