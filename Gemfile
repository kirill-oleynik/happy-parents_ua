# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Basics
ruby '3.1.3'
gem 'bootsnap', require: false
gem 'draper', '~> 4.0', '>= 4.0.2'
gem 'mobility', '~> 1.2', '>= 1.2.9'
gem 'pg', '~> 1.5'
gem 'puma', '~> 6.4'
gem 'rails', '~> 7.1.2'
gem 'rails-i18n', '~> 7.0', '>= 7.0.7'

# Management
gem 'activeadmin', '~> 3.1'
gem 'devise', '~> 4.9', '>= 4.9.3'
gem 'devise-i18n', '~> 1.11'
gem 'money-rails', '~> 1.15'
gem 'pundit', '~> 2.3'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
# gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
# gem "stimulus-rails"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Assets handling
gem 'bootstrap', '~> 5.3.0.alpha3'
gem 'sassc-rails', '~> 2.1', '>= 2.1.2'
gem 'sprockets-rails', '~> 3.4', '>= 3.4.2'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'awesome_print', '~> 1.9', '>= 1.9.2'
  gem 'bullet', '~> 7.1', '>= 7.1.4'
  gem 'factory_bot_rails', '~> 6.4'
  gem 'ffaker', '~> 2.21'
  gem 'pry-rails', '~> 0.3.9'
  gem 'reek', '~> 6.1', '>= 6.1.4'
  gem 'rubocop', '~> 1.56'
  gem 'rubocop-factory_bot', '~> 2.23', '>= 2.23.1'
  gem 'rubocop-faker', '~> 1.1'
  gem 'rubocop-performance', '~> 1.19'
  gem 'rubocop-rails', '~> 2.20'
  gem 'rubocop-rspec', '~> 2.25'
  gem 'rubocop-thread_safety', '~> 0.5.1'
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  # gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  # gem "web-console"
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem 'brakeman', '~> 6.0'
  gem 'bundler-audit', '~> 0.9.1'
  gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
end
group :test do
  gem 'fuubar', '~> 2.5', '>= 2.5.1'
  gem 'pundit-matchers', '~> 3.1'
  gem 'rspec-rails', '~> 6.0'
  gem 'shoulda-matchers', '~> 5.3'
end
