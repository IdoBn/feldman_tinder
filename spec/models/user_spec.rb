require 'spec_helper'

describe User do
  context 'methods' do
  	it { should respond_to(:provider) }
  	it { should respond_to(:uid) }
  	it { should respond_to(:email) }
  	it { should respond_to(:gender) }
  	it { should respond_to(:name) }
  	it { should respond_to(:oauth_token) }
  	it { should respond_to(:oauth_expires_at) }
  	it { subject.class.should respond_to(:from_omniauth) }
  end
end
