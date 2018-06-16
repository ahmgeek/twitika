source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Server side
gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'

# Assets
gem 'webpacker'

gem 'dotenv-rails', groups: [:development, :test]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Easier spawning setup.
gem 'foreman'

# Twitter gem.
gem 'twitter'

group :development, :test do
  # Debug
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :development do
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
end
