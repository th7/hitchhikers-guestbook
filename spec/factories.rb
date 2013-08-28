FactoryGirl.define do

  factory :user do
    sequence(:username) {|n| "user#{n}" }
    password 'test_password'
    password_confirmation 'test_password'
  end

  factory :entry do
    sequence(:message) {|n| "message#{n}" }
    sequence(:location) {|n| "location#{n}" }
    user
  end
end
