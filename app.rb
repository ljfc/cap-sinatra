require 'sinatra'
require 'shared'
require 'json'

class App < Sinatra::Base
  before do
    content_type :json
  end

  get '/' do
    { status: :ok }.to_json
  end

  get '/:name' do
    p = Person.new params[:name]
    p.to_json
  end
end
