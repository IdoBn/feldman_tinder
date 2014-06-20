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
    it { should respond_to(:matches) }
    it { should respond_to(:want!) }
    it { should respond_to(:wants?) }
  end

  context 'associations' do
    it { should have_many(:wants) }
    it { should have_many(:wanted_by) }
  end

  context 'want' do
    let(:user1) { FactoryGirl.create(:user) }
    let(:user2) { FactoryGirl.create(:user) }
    
    it '#wants?' do 
      user1.want!(user2.id)
      expect(user1.wants?(user2.id)).to be_true
    end

    it '#want!' do
      expect{ user1.want!(user2.id) }.to change { Want.count }.by(1)
    end
  end

  # it 'should match' do
  #   User.first.matches.should == 
  # end
end
