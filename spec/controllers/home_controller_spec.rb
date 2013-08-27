require 'spec_helper'

describe HomeController do
  describe '#index' do
    it 'can be reached' do
      expect { get :index }.not_to raise_error
    end
  end
end
