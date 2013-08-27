describe 'the landing page' do
  it 'can be reached' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end
