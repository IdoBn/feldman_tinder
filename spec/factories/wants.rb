# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :want do
    wanted_user_id 1
    wanting_user_id 1
  end
end
