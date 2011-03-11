# Create a .gitignore file and a new local repository, commit everything

puts "Initializing new Git repo ...".magenta

remove_file '.gitignore'
file '.gitignore', <<-CODE.gsub(/^ {2}/, '')

  # ignore unneeded OS, backup and tempfiles

  *~
  .DS_Store
  Thumbs.db
  *.tmp
  tmp.pot
  .lastdeploy
  .bundle
  mkmf.log

  # ignore temp files from merge

  *.orig
  *.rej
  *.swp

  # heroku only
  #.gitmodules
  #config/exceptional.yml

  # needed on heroku
  app/views/taglibs/auto
  public/javascripts/all.js
  public/stylesheets/all.css
  public/stylesheets/compiled/*
  public/system/*

  # ignore unneeded rails stuff

  config/database.yml
  coverage/
  db/*.sqlite3
  doc/api
  log/*.log
  tmp/**/*

  # ignore Textmate, Komodo, cscope, Eclipse, RubyMine and Quanta Plus files

  nbproject
  projfiles
  .classpath
  .project
  .settings
  .buildpath
  .idea
  *.kpf
  *.launch
  *.tmproj
  *.session
  *.webprj
  cscope.out
  tm_cscope.files
  tags
CODE

git :init
git :add => "."
git :commit => "-am 'Initial commit.'"
