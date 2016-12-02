source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use Paperclip for attachments
gem "paperclip", "~> 5.0.0"

# Use Materialize
gem 'materialize-sass'

# Nokogiri for parsing fields with errors
gem "nokogiri", '~> 1.6'

# For simple-to-use environment variables
gem "figaro", '~> 1.1'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # For deployment
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
  gem 'capistrano-figaro-yml', '~> 1.0.2', require: false
  gem 'capistrano-rails-console', '~> 1.0.2', require: false
end

group :test do
  # Better testing
  gem 'rspec-rails', '~> 3.5'
  # Automatically generate testing models
  gem 'factory_girl_rails', '~> 4.7'
  # Quickly generate fake names, urls, etc
  gem 'faker', '~> 1.6'
  # BDD testing
  gem 'capybara', '~> 2.7'
  gem 'poltergeist', '~> 1.11'
  # A few extra testing matchers
  gem 'shoulda-matchers', '~> 3.1', require: false
  # Cleans the test database after every test
  gem 'database_cleaner', '~> 1.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
