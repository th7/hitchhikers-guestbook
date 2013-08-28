require 'spec_helper'

describe SessionsController do
  context 'not signed in' do
    before do
      session.clear
      @test_user = FactoryGirl.create(:user)
    end

    describe '#new' do
      it 'can be reached' do
        expect { get :new }.not_to raise_error
      end
    end

    describe '#create' do
      it 'creates a new session' do
        post :create, :session => {
          :username => 'testuser',
          :password => 'testpassword',
        }
        expect(session[:user_id]).not_to be_nil
      end
    end
  end

  context 'signed in' do
    before do
      session[:user_id] = 1
    end

    describe '#signout' do
      it 'clears the session' do
        get :signout
        expect(session[:user_id]).to be_nil
      end
    end
  end
end
