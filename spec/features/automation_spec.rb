feature "Automation" do
  scenario "Computer attacks after the player attacks" do
    sign_in_and_play_one
    attack_confirmation
    expect(page).to have_content("Computer attacked Amy!")
  end

  scenario "Player loses hit points when attacked by computer" do
    sign_in_and_play_one
    allow(Kernel).to receive(:rand){ 11 }
    attack_confirmation
    expect(page).to have_content 'Amy: 89 HP'
  end
end
