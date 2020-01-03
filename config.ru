require_relative './db'
require_relative './app'
require_relative './app2'

run Rack::URLMap.new(
  '/parent' => App,
  '/child' => App2
)
