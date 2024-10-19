require "rubygems"
require "rack"
require "minitest/autorun"
require File.expand_path("../lib/rack_app",__FILE__)
describe RackApp do
  before do
    @request =Rack::MockRequest.new(RackApp)
  end
  it "returns a 404 response for unKnwon requests" do
    @request.get("/unknown").status.must_equal 404
  end
  it "/ display Hello World by default" do
    @request.get("/").body.must_include "Hello World!"
  end
  it "/ displays the name passed into the cookie" do
    @request.get("/","HTTP_COOKIE"=>"greet=Ruby").body.must_include "Hello Ruby!"
  end
  it "/change sets cookie and redirects to root" do
    response=@request.post("/change",params:{"name"=>"Ruby"})
    response.status.must_equal 302
    response["Location"].must_equal "/"
    response["Set-Cookie"].must_include "greet=Ruby"
  end
end

                                             
