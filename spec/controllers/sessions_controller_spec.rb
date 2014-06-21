require 'spec_helper'

describe SessionsController do
  before do
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
    # User.stub(:from_omniauth).with(User.from_omniuath(request.env["omniauth.auth"]))
    # controller.stub(request.env["omniauth.auth"]).and_return(OmniAuth.config.mock_auth[:facebook])
  end

  it "sets a session variable to the OmniAuth auth hash" do
    request.env["omniauth.auth"]['uid'].should == '100004854735666'
  end

  describe "POST 'create'" do
    it 'session is nil' do
      pending 'implement sessions create'
      expect(session[:user_id]).to be_nil
      post :create, provider: 'facebook'
      expect(session[:user_id]).to_not be_nil
    end

    it "returns http success" do
      pending 'implement sessions create'
      post :create, provider: 'facebook'
      response.should be_success
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
