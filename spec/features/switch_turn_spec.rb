feature '#switch_turn' do
  scenario 'Should display player2 turn' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    expect(page).to have_content("Alex's turn")
  end
end
