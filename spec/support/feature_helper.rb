module FeatureHelper
  def test_password
    'test_password'
  end

  def sign_in(user)
      visit '/sessions/new'
      fill_in 'session[username]', :with => user.username
      fill_in 'session[password]', :with => test_password
      click_button('Sign In')
  end
end
