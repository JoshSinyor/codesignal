# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '3.3.7'

group :test do
  gem 'rspec', '>= 3.13.1', require: false
  gem 'simplecov', '>= 0.22.0', require: false
  gem 'simplecov-console', '>= 0.9.3', require: false
end

group :linters do
  gem 'rubocop', '>= 1.77.0', require: false
  gem 'rubocop-rspec', '>= 3.6.0', require: false
end
