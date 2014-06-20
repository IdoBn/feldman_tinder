require 'spec_helper'

describe Want do
  context 'associations' do
  	it { should belong_to(:user) }
  end

  context 'validations' do
  	it 'should validate uniquness of wanting > wanted' do 
  		pending 'should validate uniquness of wanting > wanted'
  	end
  end
end
