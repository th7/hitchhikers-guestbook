describe 'the new user page' do
  context 'not signed in' do
    it 'has a create user form' do
      visit '/users/new'
      find_field('user[username]')
      find_field('user[password]')
      find_field('user[password_confirmation]')
      find_button('Sign In')
    end
  end
end
