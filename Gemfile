source 'https://rubygems.org'

ruby '2.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Spring speeds up development by keeping your application running in the
# background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# heroku specific gems
group :production do
  # Heroku web server
  gem 'unicorn', '~> 4.8.3'
  # Add better Heroku support
  gem 'rails_12factor', '0.0.2'
end

group :development do
  gem 'powder'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'dotenv-rails'
end
