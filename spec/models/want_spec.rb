require 'spec_helper'

describe Want do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'associations' do
  	it { should belong_to(:user) }
  end
end
