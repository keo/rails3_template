# Set up rspec

puts "Setting up RSpec, Capybara, Akephalos, Factory Girl ... ".magenta

remove_dir 'test'


# generate 'rspec:install'
run "#{@rvm} exec rails generate rspec:install"

append_to_file 'spec/spec_helper.rb', <<-RUBY.gsub(/^ {2}/, '')

  require 'capybara/rails'
  require 'capybara/rspec'


  Capybara.register_driver :akephalos do |app|
    # available options:
    #   :ie6, :ie7, :ie8, :firefox_3, :firefox_3_6
    Capybara::Driver::Akephalos.new(app, :browser => :firefox_3_6)
  end

  Capybara.javascript_driver = :akephalos
RUBY


generators = <<-RUBY
  config.generators do |g|
      g.test_framework   :rspec, :fixture => false, :views => false
      g.integration_tool :rspec, :fixture => false, :views => true
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
RUBY
application generators
