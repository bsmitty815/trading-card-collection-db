require_relative "config/environment"
require "sinatra/activerecord/rake"
#this is so you can load up all the rake tasks


#this will create a description so when you are in the terminal using rake and pry
desc 'start pry console'
task :console do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Pry.start
end