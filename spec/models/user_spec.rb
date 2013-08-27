require 'spec_helper'

describe User do
  it { should have_many(:entries) }

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_uniqueness_of(:username) }

end
