require 'spec_helper'

describe SessionsController do

  describe "POST 'create'" do
    it "returns http success" do
      pending 'implement sessions create'
      # user = User.from_omniauth(env["omniauth.auth"])
      # session[:user_id] = user.id
      # redirect_to root_url
    end
  end

  describe "DELETE 'destroy'" do
    it "returns http success" do
      pending 'implement sessions destroy'
      delete :destroy
      response.should be_success
    end
  end

end
