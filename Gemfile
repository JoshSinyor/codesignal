# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '3.2.0'

group :test do
  gem 'rspec', '>= 3.12.0', require: false
  gem 'simplecov', '>= 0.22.0', require: false
  gem 'simplecov-console', '>= 0.9.1', require: false
end

group :linters do
  gem 'rubocop', '>= 1.51.0', require: false
  gem 'rubocop-rspec', '>= 2.22.0', require: false
end
