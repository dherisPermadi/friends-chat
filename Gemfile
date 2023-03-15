source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"

gem "bootsnap", require: false
gem 'bootstrap-sass', '~> 3.3.6'
gem 'dotenv-rails', '~> 2.8.1'
gem "jbuilder"
gem 'jquery-rails'
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "sassc-rails"
gem "slim-rails"
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_bot', '~> 6.2.1'
  gem 'faker', '~> 2.23.0'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 5.1.2'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
