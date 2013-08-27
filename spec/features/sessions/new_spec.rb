describe 'the sign in page' do
  context 'not signed in' do
    it 'has a sign in form' do
      visit '/sessions/new'
      find_field('session[username]')
      find_field('session[password]')
      find_button('Sign In')
    end
  end
end
