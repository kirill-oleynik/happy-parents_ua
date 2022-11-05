# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'
# General
gem 'money-rails', '~> 1.15'
gem 'pg', '~> 1.4'
gem 'puma', '~> 6.0'
gem 'rails', '~> 7.0.4'
gem 'sidekiq', '~> 7.0'
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Auth
gem 'activeadmin', '~> 2.13', '>= 2.13.1'
gem 'bcrypt', '~> 3.1.7'
gem 'cancancan', '~> 3.4'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'pundit', '~> 2.2'

# Assets
gem 'importmap-rails'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'awesome_print', require: 'ap'
  gem 'bullet', '~> 7.0'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.23'
  gem 'fuubar', '~> 2.5', '>= 2.5.1'
  gem 'lefthook', '~> 1.1'
  gem 'pry', '~> 0.14.1'
  gem 'reek', '~> 6.1', '>= 6.1.1'
  gem 'rspec-rails', '~> 5.1', '>= 5.1.2'
  gem 'rubocop', '~> 1.36'
  gem 'rubocop-faker', '~> 1.1'
  gem 'rubocop-performance', '~> 1.15'
  gem 'rubocop-rails', '~> 2.17'
  gem 'rubocop-rspec', '~> 2.14'
end

group :test do
  gem 'shoulda-matchers', '~> 5.2'
end

group :development do
  gem 'brakeman', '~> 5.2', '>= 5.2.3'
  gem 'bundler-audit', '~> 0.9.1'
  gem 'bundler-leak', '~> 0.3.0'
  gem 'database_consistency', '~> 1.2', require: false
  gem 'fasterer', '~> 0.10.0'
  gem 'i18n-tasks', '~> 1.0'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
end
