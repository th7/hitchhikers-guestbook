require 'spec_helper'

describe EntriesController do
  context 'not signed in' do
    before do
      session.clear
    end

    describe '#create' do
      it 'can be reached' do
        expect { post :create }.not_to raise_error
      end
    end
  end
end
