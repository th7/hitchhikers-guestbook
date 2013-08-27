require 'spec_helper'

describe Entry do
  it { should belong_to(:user) }

  it { should validate_presence_of(:message) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:created_at) }
end
