
feature "site" do
  scenario "homepage content" do
    visit '/'
    expect(page).to have_content 'Infrastructure working'
  end

  scenario "another page" do
    visit '/Becka'
    expect(page).to have_content "Hi Becka"
  end

  scenario "allows users to enter names" do
    visit '/names'
    fill_in('Enter player 1', with: 'Becka')
    fill_in('Enter player 2', with: 'Oli')
    expect(page).to have_content "Welcome, Becka and Oli"
  end




end
