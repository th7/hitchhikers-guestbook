require 'spec_helper'

describe EntriesController do
  context 'signed in' do
    before do
      @test_user = FactoryGirl.create(:user)
      session[:user_id] = @test_user.id
    end

    describe '#create' do
      it 'creates a new entry' do
        post :create, :entry => {
          :message => 'testmessage',
          :location => 'testlocation'
        }

        expect(Entry.where(
          :message => 'testmessage',
          :location => 'testlocation',
          :user => @test_user
          ).first
        ).to be_kind_of Entry
      end
    end
  end
end
