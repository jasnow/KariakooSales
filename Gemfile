source 'https://rubygems.org'

gem 'sqlite3', :group => [:development, :test]

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  #REMOVED FOR HEROKU: gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  gem "cucumber-rails", :require => false
  gem "capybara"
  gem "database_cleaner"
end

gem "github", ">= 0.7.0", :require => nil, :group => [:development]
gem "rspec-rails", :group => [:development, :test]
group :assets do
  gem "twitter-bootstrap-rails"
  gem "therubyracer"
end

gem "simple_form"

gem 'rails-footnotes', '>= 3.7.5.rc4', :group => :development

group :production do
  #REMOVED FOR HEROKU: gem 'therubyracer-heroku'
  gem 'pg'
  # pg from http://stackoverflow.com/questions/6410623/heroku-error-when-launch-rails3-1-app-missing-postgres-gem
end