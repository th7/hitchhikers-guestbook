require 'spec_helper'

describe HomeController do
  describe '#index' do
    it 'can be reached' do
      expect { get :index }.not_to raise_error
    end

    it 'assigns @entries' do
      get :index
      expect(assigns(:entries)).not_to be_nil
    end
  end
end
