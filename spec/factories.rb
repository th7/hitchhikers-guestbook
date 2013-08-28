FactoryGirl.define do

  factory :user do
    sequence(:username) {|n| "user#{n}" }
    password 'test_password'
    password_confirmation 'test_password'
  end
end
