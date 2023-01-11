source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 6.0', '>= 6.0.3.1'
gem "pg", "1.4.4"
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
# gem 'uglifier', '>= 1.3.0'
gem 'uglifier', '~> 4.2'
gem 'coffee-rails', '~> 5.0.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#Custom Gems
gem 'friendly_id', '~> 5.2.4'
gem 'devise', '~> 4.6', '>= 4.6.2'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.3.1'
gem 'petergate', '~> 2.0', '>= 2.0.1'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

gem 'bootstrap4-datetime-picker-rails'

gem 'carrierwave', '~> 2.2', '>= 2.2.3'
gem 'carrierwave-aws', '~> 1.5'
gem 'mini_magick', '~> 4.9', '>= 4.9.2'
gem 'dotenv-rails', '~> 2.5'

gem 'cocoon', '~> 1.2', '>= 1.2.12'
gem 'gritter', '~> 1.2'
gem 'twitter', '~> 6.2'
gem 'redis', '~> 5.0', '>= 5.0.5'
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.1'

gem 'trestle', '~> 0.9.7'
gem 'trestle-auth', '~> 0.4.4'
gem 'trestle-search', '~> 0.4.3'
gem 'trestle-tinymce', '~> 0.3.1'

#web packer
gem 'webpacker', '~> 5.1', '>= 5.1.1'
gem 'image_processing', '~> 1.2'
gem 'rmagick', '~> 5.1'


#for AWS
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
gem 'aws-sdk', '~> 3.0', '>= 3.0.1'

gem 'inline_svg'
gem 'htmlbeautifier'

gem 'bundler', '~> 2.4', '>= 2.4.2'
gem 'nokogiri', '~> 1.14.0.rc1'
gem 'psych', '< 4.0.0'

# Ruby 3.1 upgrade
gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false

# carrierwave and s3
gem 'figaro', '~> 1.2'
gem 'fog-aws', '~> 3.15'

ruby "3.1.0"
