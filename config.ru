# Require config/environment.rb
require ::File.expand_path('../config/environment',  '../config/database')

set :app_file, database.rb
run Sinatra::Application
