describe 'the application layout' do
  context 'not signed in' do
    it 'has a link to sign in' do
      visit '/'
      expect(page.has_selector?('a[href="/sessions/new"]')).to be_true
    end
  end

  context 'signing in' do
    it 'doesnt have a link to sign in' do
      visit '/sessions/new'
      expect(page.has_selector?('a[href="/sessions/new"]')).to be_false
    end
  end
end
