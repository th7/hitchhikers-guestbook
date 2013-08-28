describe 'the landing page' do
  it 'can be reached' do
    visit '/'
    expect(page).to have_content "DON'T PANIC"
  end
end
