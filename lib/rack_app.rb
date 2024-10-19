require 'rack'
require "erb"
class RackApp
  def self.call(env)
    new(env).response
  end
def initialize(env)
    @request = Rack::Request.new(env)
end
def response
      case @request.path
          when "/"
            
         response = Rack::Response.new
         response.write(render("index.html.erb"))
         

          when"/change"
           response= Rack::Response.new 
              response.set_cookie("greet",@request.params["name"])
              response.redirect("/")
            
          
          else
         response = Rack::Response.new("Not Found", 404)
         
         end
      response.finish
         end  
               
  
 
    def render(template)
      path=File.expand_path("../views/#{template}",__FILE__)
      ERB.new(File.read(path)).result(binding)
    end
    def greet_name
      @request.cookies["greet"] ||"world"
    end
end
                             
