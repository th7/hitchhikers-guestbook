describe 'the sign in page' do
  context 'not signed in' do
    before do
      @test_user = User.new(
        :username => 'testsessionuser',
        :password => 'testsessionpassword',
        :password_confirmation => 'testsessionpassword'
      )
      @test_user.save!
    end

    it 'has a sign in form' do
      visit '/sessions/new'
      find_field('session[username]')
      find_field('session[password]')
      find_button('Sign In')
    end

    it 'creates a new session when submitted' do
      visit '/sessions/new'
      fill_in 'session[username]', :with => 'testsessionuser'
      fill_in 'session[password]', :with => 'testsessionpassword'
      click_button('Sign In')
      expect(page).to have_content 'testsessionuser'
    end
  end
end
