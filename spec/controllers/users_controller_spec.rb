require 'spec_helper'

describe UsersController do

  describe '#index' do
    it 'can be reached' do
      expect { get :index }.not_to raise_error
    end
  end

  describe '#new' do
    it 'can be reached' do
      expect { get :new }.not_to raise_error
    end
  end

  describe '#create' do
    it 'can be reached' do
      expect { post :create }.not_to raise_error
    end
  end


  describe '#edit' do
    it 'can be reached' do
      expect { get :edit, :id => 1 }.not_to raise_error
    end
  end

  describe '#update' do
    it 'can be reached' do
      expect { get :update, :id => 1 }.not_to raise_error
    end
  end

  describe '#destroy' do
    it 'can be reached' do
      expect { post :destroy, :id => 1 }.not_to raise_error
    end
  end
end
