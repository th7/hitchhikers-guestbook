require 'spec_helper'

describe UsersController do

  context 'not signed in' do
    before do
      session.clear
    end

    describe '#new' do
      it 'can be reached' do
        expect { get :new }.not_to raise_error
      end
    end

    describe '#create' do
      it 'creates a user' do
        post :create, :user => {
          :username => 'controllertestuser',
          :password => 'controllertestpassword',
          :password_confirmation => 'controllertestpassword'
        }

        expect(User.where(:username => 'controllertestuser').first).to be_kind_of User
      end
    end
  end

  context 'when signed in' do
    before do
      session[:user_id] = 1
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
end
