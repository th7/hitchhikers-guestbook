require 'spec_helper'

describe SessionsController do
  describe '#create' do
    it 'can be reached' do
      expect { post :create }.not_to raise_error
    end
  end
end
