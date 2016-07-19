bundle install
rake db:migrate
rake assets:precompile
rake non_digested
rails s -d
