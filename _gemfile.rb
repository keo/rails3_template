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

  # Better console formatting
  gem 'hirb'

  # File upload management
  # NOTE: requires this fix to be applied: http://github.com/thoughtbot/paperclip/commit/56d6b2402d553a505f29eaeb022d4a6900fda8fa
  gem 'paperclip', '~> 2.3'

  
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


  group :development, :test do
    gem 'factory_girl'
    gem 'rspec-rails'
    gem 'rcov'
    gem 'random_data'
    gem 'capybara'
    gem 'akephalos'
  end
RUBY
