unless Gem.available?("heroku")
  run "gem install heroku"
  Gem.refresh
  Gem.activate("heroku")
  run "heroku create"
end