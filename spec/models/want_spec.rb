require 'spec_helper'

describe Want do
  context 'associations' do
  	it { should belong_to(:user) }
  end

  context 'validations' do
  	it { validate_uniqueness_of(:wanting_user_id) }
  	it { validate_uniqueness_of(:wanted_user_id) }
  end
end
