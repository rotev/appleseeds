source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.13'

gem 'thin'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
	gem 'sqlite3'
	gem 'pg'
	gem 'taps' # for pushing and pulling db on heroku.
end

group :production do
	gem 'pg'
end

gem "paperclip"
gem 'aws-sdk' # Amazon S3 for paperclip on heroku

gem 'jquery-rails', "2.3.0"

gem 'activeadmin'
#gem 'sass-rails'
gem "meta_search",    '>= 1.1.0.pre'
gem 'active_admin_editor'
#gem 'tinymce-rails' # making the assets precompile run forever.

# Gems used only for assets and not required
# in production environments by default.
#group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml-rails'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
#end

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
