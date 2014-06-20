require 'spec_helper'

describe WelcomeController do

  describe "GET 'root'" do
    it "returns http success" do
      { :get => "/" }.should route_to(:controller => "welcome", :action => "index")
    end
  end

end
