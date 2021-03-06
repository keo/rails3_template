# Add some demo html pages. These can be deleted at any time.

puts "Creating demo pages ...".magenta

inject_into_file 'config/routes.rb', :after => ".routes.draw do\n" do
  <<-RUBY.gsub(/^ {2}/, '')

    match 'demos/grid' => 'demos#grid'
    match 'demos/text' => 'demos#text'

  RUBY
end

file 'app/controllers/demos_controller.rb', <<-RUBY.gsub(/^ {2}/, '')
  class DemosController < ApplicationController

    def grid
    end

    def text      
      flash.now[:alert] = "This is an alert"
      flash.now[:notice] = "This is a notice"
    end

  end
RUBY

file 'app/views/demos/grid.html.haml', <<-HAML.gsub(/^ {2}/, '')
  = content_for :stylesheets do
    <style type='text/css'> div#main p { font-size: 60px; text-align: center; margin: 0 0 20px 0; border: 1px solid black } </style>

  .row
    .non_semantic_12col
      %p 12

  .row
    .non_semantic_8col
      %p 8
      .row
        .non_semantic_4col
          %p 4
        .non_semantic_4col
          %p 4
    .non_semantic_4col_tall
      %p 4
HAML

file 'app/views/demos/text.html.haml', <<-HAML.gsub(/^ {2}/, '')
  .row
    .content
      %p
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam egestas sodales metus sit amet varius. Nam euismod
        bibendum ligula. Nam rhoncus, orci ac fermentum viverra, elit diam ornare neque, vel sodales ante lorem nec eros.
        Aenean accumsan volutpat diam ac mattis. Praesent et magna mi, eu ornare enim. Nam mi odio, condimentum non convallis
        eget, vestibulum non lacus. Integer sit amet lorem id ipsum ornare consequat. Integer tortor urna, mollis ullamcorper
        pellentesque vel, sollicitudin at nisi. Aliquam vitae sapien massa, a feugiat dolor. Aliquam varius euismod lorem,
        sed egestas nisi ultrices in. Ut commodo orci in urna malesuada tincidunt pellentesque diam blandit. Curabitur in sem
        a magna consequat porttitor. Morbi elementum egestas turpis sit amet consectetur. Sed velit leo, pretium vel
        tincidunt consectetur, consectetur ac neque. Vestibulum nec orci eu arcu hendrerit malesuada in vel quam. Fusce
        sollicitudin, nisl vel suscipit facilisis, quam arcu adipiscing diam, nec lacinia arcu elit non lorem. Vestibulum
        ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;

      %hr

      .buttons
        %button{:type => :submit, :class => 'positive', :name => :button, :value => :save} Save Changes
        = link_to 'Cancel Changes', '/', :class => 'button neutral large'
        = link_to 'Cancel Changes', '/', :class => 'button normal large'
        = link_to 'Cancel Changes', '/', :class => 'button warning large'

      %hr

      %table.horizontal
        %thead
          %tr
            %th Column 1
            %th Column 2
            %th Column 3
        %tbody
          %tr
            %td Cell 1
            %td Cell 2
            %td Cell 3
          %tr
            %td Cell 1
            %td Cell 2
            %td Cell 3
          %tr
            %td Cell 1
            %td Cell 2
            %td Cell 3

      %hr

      %table.vertical
        %tbody
          %tr
            %td Row 1
            %td Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam egestas sodales metus sit amet varius. Nam euismod bibendum ligula. Nam rhoncus, orci ac fermentum viverra
          %tr
            %td Row 2
            %td Aenean aliquet erat at velit pellentesque posuere.
          %tr
            %td Row 3
            %td Etiam at dui nunc, in iaculis dolor. Maecenas lorem risus, pellentesque eget convallis et, ornare id elit. Donec porta suscipit tincidunt. Nam quis mauris in augue viverra tempus quis non nibh. Cras porttitor lectus cursus lacus       sagittis non volutpat tortor pharetra. Aliquam ultrices ullamcorper molestie. Integer fringilla nisl vitae justo       tempor semper.

      %hr

      = form_tag '/' do
        %fieldset
          %legend Sample form
          .form_input
            = label_tag 'Name:'
            = text_field_tag :name
            %span.description.required
              This is where you enter your name.

          .form_input
            = label_tag "Text:"
            = text_area_tag :content

          .checkbox_group
            = check_box_tag :active
            = label_tag "Check this box for great fun"

      %hr

  .row
    .main
      %p
        Aenean aliquet erat at velit pellentesque posuere. Proin euismod ultrices tellus at placerat. Proin luctus accumsan
        metus, at dignissim elit feugiat ac. Fusce et odio nec orci mollis sollicitudin. Donec diam metus, porttitor sit amet
        suscipit et, bibendum eget velit. Nam at augue felis. In rhoncus, nunc quis pharetra dapibus, nisl diam adipiscing
        sapien, ac laoreet velit neque id mauris. Mauris nisi neque, suscipit nec ornare a, euismod et leo. In varius tellus
        in turpis consequat tincidunt. Nunc tristique, nulla eget semper hendrerit, urna lacus blandit lorem, vitae imperdiet
        lacus dolor et turpis. Nullam convallis tincidunt erat, id imperdiet nibh aliquet in. Vivamus sed ante tellus, at
        lobortis nisl. Integer sed nulla eros. Nulla placerat orci quis nisl hendrerit mollis. Sed lectus justo, pulvinar
        tincidunt lobortis ut, malesuada sed ligula. Proin sed est massa. Nullam venenatis odio ac nunc molestie ullamcorper.

    .aside
      %p
        Etiam at dui nunc, in iaculis dolor. Maecenas lorem risus, pellentesque eget convallis et, ornare id elit. Donec
        porta suscipit tincidunt. Nam quis mauris in augue viverra tempus quis non nibh. Cras porttitor lectus cursus lacus
        sagittis non volutpat tortor pharetra. Aliquam ultrices ullamcorper molestie. Integer fringilla nisl vitae justo
        tempor semper.
HAML
