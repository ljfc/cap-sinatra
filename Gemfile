# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'shared', path: './shared'
gem 'sequel'
gem 'pg'

group :development do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-chruby'
  gem 'capistrano-passenger'
  gem 'capistrano-secrets-yml'
  gem 'sqlite3'
  gem 'minitest'
  gem 'guard'
  gem 'guard-minitest'
end
