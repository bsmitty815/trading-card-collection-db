require "bundler/setup"
Bundler.require
#the two above codes grab all the gem files and require them so you dont have to do it individually
require "json"
require "rack/cors"

require_all "app"
#this will add everything inside the app folder