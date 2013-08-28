describe 'the new user page' do
  context 'not signed in' do

    it 'has a create user form' do
      visit '/users/new'
      find_field('user[username]')
      find_field('user[password]')
      find_field('user[password_confirmation]')
      find_button('Sign In')
    end

    it 'creates a user when submitted' do
      visit '/users/new'
      fill_in 'user[username]', :with => 'testuser'
      fill_in 'user[password]', :with => 'testpassword'
      fill_in 'user[password_confirmation]', :with => 'testpassword'
      click_button('Sign In')
      expect(User.where(:username => 'testuser').first).not_to be_nil
    end
  end
end
