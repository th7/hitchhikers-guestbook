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
end
