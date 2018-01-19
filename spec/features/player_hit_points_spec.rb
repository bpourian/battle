feature '#Play-Page' do
  scenario 'Should see player2 HP' do
    # visit '/'
    # fill_in 'player_1_name', with: 'Benjamin'
    # fill_in 'player_2_name', with: 'Alexandra'
    # click_button 'Submit'
    sign_in_and_play
    expect(page).to have_text('Alex: 100 HP')
  end

  scenario 'Should see player1 HP' do
    # visit '/'
    # fill_in 'player_1_name', with: 'Benjamin'
    # fill_in 'player_2_name', with: 'Alexandra'
    # click_button 'Submit'
    sign_in_and_play
    expect(page).to have_text('Ben: 100 HP')
  end
end
