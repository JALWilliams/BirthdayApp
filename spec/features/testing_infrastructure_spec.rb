feature 'Testing Infastructure'  do
  scenario 'Can run app and check page content' do
    visit ('/')
    save_and_open_page
    expect(page).to have_content("Hello there!")
  end

end