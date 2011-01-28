# Set up Gemfile

puts "Creating Gemfile ...".magenta

remove_file 'Gemfile'
file 'Gemfile', <<-RUBY.gsub(/^ {2}/, '')

  # Gems host
  source 'http://rubygems.org'

  # Rails (version >= 3.0.0 and < 3.1)
  gem 'rails', '~> 3.0.0'
  
  # Database
  gem 'sqlite3-ruby', :require => 'sqlite3'

  # HTML and CSS replacement, includes SASS
  gem 'haml', '~> 3.0'
  gem 'haml-rails'

  # HTML/CSS framework and boilerplate
  gem 'compass'
  gem 'html5-boilerplate'

  # Human readable URLs
  gem 'friendly_id', '~> 3.2'

  # Validation of associations
  gem 'validates_existence', '~> 0.5'

  # Better console formatting
  gem 'hirb'

  # User authentication (Accounts)
  gem 'devise', '~> 1.1'
  
  # User authorization (Permissions)
  gem 'cancan', '~> 1.5.1'
  
  # Multiple views
  gem 'themes_for_rails'

  # File upload management
  # NOTE: requires this fix to be applied: http://github.com/thoughtbot/paperclip/commit/56d6b2402d553a505f29eaeb022d4a6900fda8fa
  gem 'paperclip', '~> 2.3'
  
  #Pagination of long lists
  gem 'will_paginate', '~> 3.0.pre2'
  
  # To convert Markdown to HTML
  # gem 'maruku'
  #
  # For Devise view generation
  # gem 'hpricot'
  # gem 'ruby_parser'
  
  # To deal with file uploads via Flash uploader
  # gem 'mime-types'
  
  # To track changes to pages and other objects
  # gem 'vestal_versions'
  #    -or-
  # gem 'paper_trail'
   
  # gem 'mysql2'
  # gem 'capistrano'

  # Useful Rails generator scripts for scaffolding, layout files, authentication, and more
  gem "nifty-generators", :group => :development

  group :development, :test do
    gem 'factory_girl'
    gem 'rspec-rails', '~> 2.4'
    gem 'rcov'
    gem 'random_data'
  end
RUBY
