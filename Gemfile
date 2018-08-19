source 'https://rubygems.org'
ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.6'
gem 'bootstrap-sass'
gem 'recaptcha', :require => 'recaptcha/rails'

gem "brakeman", :require => false
gem 'figaro'
gem 'newrelic_rpm'
gem 'zip'
gem 'docx_replace'
gem 'rubyzip', :require => 'zip'

group :development, :test do
	gem 'sqlite3',       '1.3.13'
	gem 'rspec-rails',   '~> 3.6'
	# gem 'guard-rspec'
	gem 'spork'
	# gem 'guard-spork',   '1.5.0'
	gem 'childprocess',  '0.3.9'
  gem 'byebug',        '9.0.6', platform: :mri
end

group :test do
	gem 'selenium-webdriver', '2.35.1'
	gem 'capybara', '2.1.0'
	gem 'libnotify', '0.8.0'
end

# # Use pony to send emails from portfolio page
# gem 'pony'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '5.0.6'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.2.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.2.2'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.3.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '5.0.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
	gem 'pg', '0.18.4'
	gem 'rails_12factor', '0.0.2'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
