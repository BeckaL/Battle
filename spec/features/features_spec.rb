
feature "site" do

  scenario "another page" do
    visit '/Becka'
    expect(page).to have_content "Hi Becka"
  end

  scenario "allows users to enter names" do
    visit '/'
    fill_in('Enter player 1', with: 'Becka')
    fill_in('Enter player 2', with: 'Oli')
    click_on('Submit names')
    expect(page).to have_content "Welcome, Becka and Oli"
  end

end
