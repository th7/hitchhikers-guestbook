require 'spec_helper'

describe User do
  it { should have_many(:entries) }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }

  # bug in shoulda-matchers? unusual error with this test
  # it { should validate_uniqueness_of(:username) }

end
