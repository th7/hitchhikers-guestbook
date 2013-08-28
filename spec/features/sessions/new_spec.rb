describe 'the sign in page' do
  context 'not signed in' do
    before do
      @test_user = FactoryGirl.create(:user)
    end

    it 'has a sign in form' do
      visit '/sessions/new'
      find_field('session[username]')
      find_field('session[password]')
      find_button('Sign In')
    end

    it 'creates a new session when submitted' do
      visit '/sessions/new'
      fill_in 'session[username]', :with => 'testuser'
      fill_in 'session[password]', :with => 'testpassword'
      click_button('Sign In')
      expect(page).to have_content 'testuser'
    end
  end
end
