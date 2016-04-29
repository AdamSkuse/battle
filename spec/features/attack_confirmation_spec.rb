
feature "Attack confirmation" do
  scenario "Player 1 gets confirmation when they attack Player 2" do
    sign_in_and_play_two
    click_link 'Attack'
    expect(page).to have_content("Amy attacked Bizarro Amy!")
  end

  scenario 'reduce Player 2 HP by a random amount' do
    sign_in_and_play_two
    allow(Kernel).to receive(:rand){ 11 }
    attack_confirmation
    expect(page).to have_content 'Bizarro Amy has 89 hit points'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play_two
    allow(Kernel).to receive(:rand){ 2 }
    attack_confirmation
    attack_confirmation
    expect(page).to have_content 'Amy has 98 hit points'
  end
end
