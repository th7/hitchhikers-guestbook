module FeatureHelper
  def test_username
    'test_username'
  end

  def test_password
    'test_password'
  end

  def test_usercreds
    { :username => test_username, :password => test_password }
  end

  def sign_in
      visit '/sessions/new'
      fill_in 'session[username]', :with => test_username
      fill_in 'session[password]', :with => test_password
      click_button('Sign In')
  end
end
