feature "site" do

  scenario "another page" do
    visit '/Becka'
    expect(page).to have_content "Hi Becka"
  end

  scenario "allows users to enter names" do
    sign_in_and_play
    expect(page).to have_content "Welcome, Becka and Oli"
  end

  scenario "displays player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Oli points: 100"
  end

  scenario 'gets confirmation of attack' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content "Becka attacked Oli"
  end

  scenario 'attack reduces player 2 HP by 10' do
    sign_in_and_play
    click_link('Attack')
    visit '/play'
    expect(page).to have_content "Oli points: 90"
  end

  scenario 'starts with it being player 1\'s turn' do
    sign_in_and_play
    expect(page).to have_content "Becka's turn"
  end

  scenario 'switches turns after first attack' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content "Oli's turn"
  end

  scenario 'player 2 attacks' do
    sign_in_and_play
    2.times { click_link('Attack') }
    expect(page).to have_content "Oli attacked Becka"
  end

  scenario 'player 1\'s HPs reduced by 10 when player 2 attacks' do
    sign_in_and_play
    2.times { click_link('Attack') }
    expect(page).to have_content "Becka points: 90"
  end

  scenario 'player 2\'s HPs do not change when attacking player 1' do
    sign_in_and_play
    2.times { click_link('Attack') }
    expect(page).to have_content "Oli points: 90"
  end

  scenario 'getting to 0 HP loses the game' do
    sign_in_and_play
    19.times { click_link('Attack') }
    expect(page).to have_content "Oli lost the game :-("
  end 

end
