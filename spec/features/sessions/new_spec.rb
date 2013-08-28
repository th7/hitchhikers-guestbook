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
      sign_in
      expect(page).to have_content test_username
    end
  end
end
