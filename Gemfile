source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'clearance'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.0.0.beta2'
gem 'jwt'
gem 'versionist'
gem 'mina', '0.3.8'
gem 'mina-puma', require: false
gem 'mina-nginx', require: false
gem 'puma_worker_killer'
gem 'administrate'

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
  gem 'rubocop'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.6'
  gem 'factory_bot_rails'
  gem 'guard-rspec', require: false
  gem 'pry-rails'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
