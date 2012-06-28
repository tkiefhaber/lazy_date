source 'https://rubygems.org'

gem 'rails', '3.2.5'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'faraday'
gem 'simple_form'
# gem 'netflix_gem' :git => "git://github.com/tkiefhaber/netflix_gem.git"


group :production do
  gem 'pg'
end

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rack-perftools_profiler', :require => 'rack/perftools_profiler'
  gem 'rspec-rails'
  gem 'simplecov', :require => false
  gem 'sqlite3'
end

group :test do
  gem 'cane', :git => "git://github.com/square/cane.git"
  gem 'capybara'
  gem 'faker'
  gem 'growl'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'reek'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'mechanize'
gem 'nokogiri'
gem 'omniauth'
gem 'omniauth-netflix'
gem 'jquery_mobile_rails'


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
