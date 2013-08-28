FactoryGirl.define do
  factory :user do
    username 'testuser'
    password 'testpassword'
    password_confirmation 'testpassword'
  end
end
