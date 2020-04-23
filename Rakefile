require_relative 'config/environment.rb'
require 'sinatra/activerecord/rake'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

