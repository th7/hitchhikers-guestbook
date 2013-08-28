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

    describe '#destroy' do
      it 'destroys an entry' do
        @test_user.entries << FactoryGirl.create(:entry)
        entry_id = @test_user.entries.last.id

        post :destroy, :id => entry_id

        expect(Entry.where(:id => entry_id).first).to be_nil
      end
    end
  end
end
