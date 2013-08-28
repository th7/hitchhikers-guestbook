describe 'the landing page' do
  it 'can be reached' do
    visit '/'
    expect(page).to have_content "DON'T PANIC"
  end

  it 'displays all entries' do
    entries = []
    3.times do
      entries << FactoryGirl.create(:entry)
    end

    visit '/'
    entries.each do |entry|
      expect(page).to have_content entry.message
      expect(page).to have_content entry.location
      expect(page.find('body')).to have_content entry.user.username
      expect(page).to have_content entry.created_at
    end
  end

  context 'signed in' do
    before do
      @test_user = FactoryGirl.create(:user)
      sign_in(@test_user)
    end

    it 'has a form for creating an entry' do
      visit '/'
      find_field('entry[message]')
      find_field('entry[location]')
      find_button('Create Entry')
    end

    it 'creates an entry when submitted' do
      visit '/'
      fill_in 'entry[message]', :with => 'testmessage'
      fill_in 'entry[location]', :with => 'testlocation'
      click_button('Create Entry')
      expect(page).to have_content 'testmessage'
      expect(page).to have_content 'testlocation'
    end
  end
end
