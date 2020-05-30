source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.1.4"
# Use mysql as the database for Active Record
gem "mysql2", ">= 0.3.18", "< 0.5"
# Use Puma as the app server
gem "puma", "~> 3.7"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem "carrierwave"
# for richtext editor
gem "ckeditor"
gem "haml-rails", "~> 2.0"
gem "mini_magick"
# Use for our Admin
gem "ancestry"
gem "rails_admin"
gem "rails_admin_rollincode"
# Monitor when rspec get some changes
gem "guard-rspec", require: false
# JSON formatter
gem "active_model_serializers"
gem "annotate_models"
# Fake data
gem "faker"
# Use for debugging rails code
gem "pry"
# Use for data type coercion
gem "virtus"
# Use for Authentication
gem "devise", github: "plataformatec/devise", branch: "master"
# Rename rails app
gem "rename"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1"
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rspec"
  gem "web-console", ">= 3.3.0"
  # unit testing
  gem "factory_bot_rails"
  gem "rspec-rails", "~> 4.0.0.beta3"
  gem "shoulda"
  gem "shoulda-matchers"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.4", require: false

  gem "capistrano-bundler"
  gem "capistrano-database-yml", "~> 1.0", ">= 1.0.1"
  gem "capistrano-passenger", "~> 0.2.0"
  gem "capistrano-rails-db"
  gem "capistrano-rvm"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
