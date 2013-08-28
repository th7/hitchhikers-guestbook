Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }
include FeatureHelper

FactoryGirl.define do

  factory :user do
    username test_username
    password test_password
    password_confirmation test_password
  end
end
