source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'
gem 'rails', '6.1.3.2'

gem 'aws-sdk-s3', require: false
gem 'clearance'
gem 'faker', :require => false
gem 'friendly_id'
gem 'image_processing', '~> 1.2'
gem 'jbuilder', '~> 2.7'
gem 'hotwire-rails'
gem 'rails-i18n'
gem 'pg'
gem 'pagy'
gem 'puma', '~> 4.1'
gem 'route_translator'
gem 'sass-rails', '>= 6'
gem 'simple_form'
gem 'simple_form_tailwind_css'
gem 'tinymce-rails'
gem 'uglifier', '~> 4.2'
gem "view_component", require: "view_component/engine"
gem 'webpacker', '~> 4.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Storage variant

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'bullet'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
