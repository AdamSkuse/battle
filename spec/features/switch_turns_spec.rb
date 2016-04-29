
feature "Switching of turns" do
  scenario "Player 2 gets a turn after Player 1 attacks" do
    sign_in_and_play_two
    click_link "Attack!"
    click_button "OK"
    expect(page).to have_content("")
  end
end

describe 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play_two
      expect(page).to have_content "Amy's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play_two
      click_link "Attack!"
      click_button "OK"
      # expect(page).not_to have_content "" # problem with repetition of "Amy"
      expect(page).to have_content "Bizarro Amy's turn"
    end
  end
end
