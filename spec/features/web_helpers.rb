def sign_in_and_play
  visit '/'
  fill_in('enter-player-1', with: 'Becka')
  fill_in('enter-player-2', with: 'Oli')
  click_on('Submit names')
end
