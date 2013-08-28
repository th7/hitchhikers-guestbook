include FeatureHelper

describe 'the application layout' do
  before do
    @test_user = FactoryGirl.create(:user)
  end

  context 'not signed in' do
    it 'has a link to sign in' do
      visit '/'
      expect(page.has_selector?('a[href="/sessions/new"]')).to be_true
    end

    it 'has a link to create an account' do
      visit '/'
      expect(page.has_selector?('a[href="/users/new"]')).to be_true
    end
  end

  context 'signed in' do
    before do
      sign_in
    end

    it 'doesnt have a link to sign in' do
      visit '/'
      expect(page.has_selector?('a[href="/sessions/new"]')).to be_false
    end

    it 'doesnt have a link to create an account' do
      visit '/'
      expect(page.has_selector?('a[href="/users/new"]')).to be_false
    end

    it 'has a link to sign out' do
      visit '/'
      expect(page.has_selector?('a[href="/signout"]')).to be_true
    end
  end

  context 'signing in' do
    it 'doesnt have a link to sign in' do
      visit '/sessions/new'
      expect(page.has_selector?('a[href="/sessions/new"]')).to be_false
    end

    it 'doesnt have a link to create an account' do
      visit '/sessions/new'
      expect(page.has_selector?('a[href="/users/new"]')).to be_false
    end
  end

  context 'creating an account' do
    it 'doesnt have a link to sign in' do
      visit '/users/new'
      expect(page.has_selector?('a[href="/sessions/new"]')).to be_false
    end

    it 'doesnt have a link to create an account' do
      visit '/users/new'
      expect(page.has_selector?('a[href="/users/new"]')).to be_false
    end
  end
end
