source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 6.0', '>= 6.0.3.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
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
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'petergate', '~> 2.0', '>= 2.0.1'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

gem 'bootstrap4-datetime-picker-rails'

gem 'carrierwave', '~> 2.0.0.rc'
gem 'carrierwave-aws', '~> 1.3'
gem 'mini_magick', '~> 4.9', '>= 4.9.2'
gem 'dotenv-rails', '~> 2.5'

gem 'cocoon', '~> 1.2', '>= 1.2.12'
gem 'gritter', '~> 1.2'
gem 'twitter', '~> 6.2'
gem 'redis', '~> 3.3', '>= 3.3.3'
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.1'

gem 'trestle', '~> 0.8.12'
gem 'trestle-auth', '~> 0.2.5'
gem 'trestle-search', '~> 0.3.0'
gem 'trestle-tinymce', '~> 0.1.3'

#web packer
gem 'webpacker', '~> 5.1', '>= 5.1.1'
gem 'image_processing', '~> 1.2'
gem 'rmagick'


#for AWS
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
gem 'aws-sdk', '~> 3.0', '>= 3.0.1'

gem 'inline_svg'

ruby "2.6.5"
