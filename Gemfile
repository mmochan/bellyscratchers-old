source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-ui-rails'
end

gem 'jquery-rails'
gem 'heroku'
gem "bson_ext"
gem 'thin'
gem 'quiet_assets'
gem 'devise'
gem 'simple_form'
#gem "twitter-bootstrap-rails"

group :development do
  gem 'irbtools'
  gem 'pry'
  gem 'guard-rspec'
  gem 'growl'
  gem 'rb-inotify', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-fchange', :require => false
  gem 'terminal-notifier'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem "capybara"  
end

group :production do 
  gem 'unicorn'
  gem 'capistrano'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# To use debugger
# gem 'debugger'
