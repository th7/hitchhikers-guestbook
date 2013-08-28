module FeatureHelper
  def sign_in
      visit '/sessions/new'
      fill_in 'session[username]', :with => 'testsessionuser'
      fill_in 'session[password]', :with => 'testsessionpassword'
      click_button('Sign In')
  end
end
