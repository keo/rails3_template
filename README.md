This is a fork of a fork of a rails template based on Rails template based on Mike Fischer's greendog-rails-template. :) It also incorporates work from PerfectLine's Template Bucket system. The goal of this fork is to fix bugs and extend the template so that it works better out-of-the-box.

For more information:
<https://github.com/keo/rails3-template>
<https://github.com/greendog99/greendog-rails-template>
<https://github.com/perfectline/template-bucket>

## Overview

This is just a [Rails Template](http://m.onkey.org/2008/12/4/rails-templates) to facilitate the
quick set-up of my Rails applications.  The main features are:

* Sets up the [compass-html5-boilerplate](https://github.com/sporkd/compass-html5-boilerplate) gem by Peter Gumeson (sporkd). This provides:
 * All templates, stylesheets, and views use [haml](http://haml-lang.com/) and [sass](http://sass-lang.com/).
 * Paul Irish's [HTML5 Boilerplate](http://html5boilerplate.com/) for layout and reset.
 * [Compass](http://compass-style.org/) for managing CSS mixins and frameworks.
* Adds a simple 12-column grid framework from <http://www.1kbgrid.com/> (converted to sass).
* Adds a basic stylesheet with header, nav bar, body, and footer, and styles for flash messages and buttons.
* Adds a partial to render form error messages.
* Removes everything to do with Prototype, since the Boilerplate is based on [JQuery](http://jquery.com/).
* Removes unneeded files like the default Rails index.html and image.
* Adds a Gemfile with commonly needed gems, and some some optional gems available to un-comment when needed.
* Uses RSpec and factory_girl instead of test-unit.
* Adds Capybara and Akephalos for integration testing
* Adds a config/app_config.yml file and corresponding initializer, to facilitate app-specific config settings.
* Disables timestamped_migrations to make the filenames more usable in TextMate.
* Sets up a Git repository complete with gitignore list, and commits the entire project.
* Adds a demos controller and several demo pages to help get started.

## Prerequisites

* [Rails](http://rubyonrails.org/) 3.0 or newer
* [RVM](http://rvm.beginrescueend.com/) with at least one Ruby installed

## Usage

Get a copy of the template:

`git clone git://github.com/keo/rails3-template.git /tmp/rails3-template`

Create a new Rails application as normal, specifying the path to the template script with the **-m** flag:

`rails new appname -m /tmp/rails3-template/template.rb`

Start the rails server with `rails s` and browse
to `http://localhost:3000/demos/text.

## Documentation

This section will explain how to use each of the features.

## To Do

* Optionally (based on user interrogation) set up features like devise, paperclip, etc.

## See Also

* <http://rdoc.info/github/wycats/thor/master/Thor/Actions> - Actions used in app template generators (e.g. InjectIntoFile)

## Credits

Thanks to others whose work has steered me in the right direction:

* <https://github.com/greendog99/greendog-rails-template>
* <https://github.com/shawn/shawns-rails3-template/>
* <https://github.com/sporkd/compass-html5-boilerplate>
* <http://html5boilerplate.com/>
