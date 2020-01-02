require 'sinatra'

class App < Sinatra::Base
  get '/' do
    'Hello from Sinatra'
  end
end
