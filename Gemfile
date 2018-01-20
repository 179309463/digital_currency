source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
gem 'rails-i18n'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
gem 'mysql2'
gem 'pg', '~> 0.18'
gem 'redis'

# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'turbolinks-scroll-to-hash-fix-rails', :git => 'https://github.com/simonneutert/turbolinks-scroll-to-hash-fix-rails'
gem 'pjax_rails', github: 'rails/pjax_rails' 

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7', platforms: :ruby

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'twitter-bootstrap-rails'
gem 'rolify'
gem 'cancancan'
gem 'authority'
gem 'pundit'
gem 'devise'
gem 'devise-bootstrap-views'
gem 'filterrific'
gem 'simple_form'
gem 'cocoon'
gem 'country_select'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem 'kaminari-i18n'

group :development do
	gem 'annotate'
        gem 'lol_dba'
	gem 'erd'
	gem 'rails-erd'
	gem 'i18n_scaffold_generator'
	gem 'ffaker'
	gem 'faker'
	gem 'rails-admin-scaffold'
	gem 'better_errors'
	gem 'binding_of_caller'
  gem 'rails_db'
  gem 'alaska'
end 

gem 'rails_admin'
gem 'rails_admin-i18n'
gem 'rails_admin_tag_list'
gem 'rails_admin_history_rollback'
gem 'rails_admin_import'
gem 'rails_admin_json_translate'
gem 'rails_admin_charts'

gem 'acts-as-taggable-on'
gem 'acts_as_follower'
#gem 'acts_as_paranoid', github: 'ActsAsParanoid/acts_as_paranoid'
gem 'paranoia'
gem 'acts_as_archival'
gem 'acts_as_votable'
gem 'acts_as_favoritor'
gem 'acts_as_network', github: 'rahul-ranchal/acts_as_network'
gem 'acts_as_list'
gem 'acts_as_commentable_with_threading'
gem 'active_record-acts_as'
gem 'acts_as_published'
gem 'awesome_nested_set'
gem 'paper_trail'
gem 'json_translate'

gem 'enumerize'
gem 'enumerate_it'
gem 'default_value_for'
gem 'strip_attributes'
gem 'ransack'
gem 'searchkick'
gem 'thinking-sphinx'
gem 'sunspot_rails'
gem 'sunspot_solr'
gem 'mobylette', git: 'https://github.com/MachineTools/mobylette.git'
gem 'thredded'
gem 'thredded-markdown_katex'
gem 'thredded-markdown_coderay'
gem 'thredded-workgroup', github: 'red56/thredded-workgroup', branch: 'master'
gem 'emoji'
gem 'rails-timeago'
gem 'friendly_id'
gem 'high_voltage'

gem 'ember-cli-rails'
gem 'dashing-rails'

gem 'carrierwave'
gem 'mini_magick'
gem 'paperclip'
gem 'paperclip-meta'
gem 'refile', github: 'refile/refile'
gem 'refile-mini_magick'

gem 'letter_opener'

gem 'unirest'
gem 'rest-client'

gem 'sidekiq'
gem 'delayed_job_web'
gem 'delayed_job_active_record'
gem 'resque'

