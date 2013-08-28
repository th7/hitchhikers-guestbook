module FeatureHelper
  def sign_in
      visit '/sessions/new'
      fill_in 'session[username]', :with => 'testuser'
      fill_in 'session[password]', :with => 'testpassword'
      click_button('Sign In')
  end
end
