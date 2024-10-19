require 'rack'
require 'rack/reloader'
require './lib/rack_app'


 if ENV['RACK_ENV'] == 'development'
   use Rack::Reloader, 0
 end


   use Rack::Auth::Basic, "Protected Area" do |username, password|
     username == "tasbeeh" && password == "tasbeeh"
     end


     app = Rack::Cascade.new([
       Rack::Files.new('public'), 
         RackApp 
         ])

         run app
         
