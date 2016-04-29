

feature "Select number of players" do
  scenario "It lets the user select a one player game" do
    sign_in_and_play_one
    expect(page).to have_text("Hello Amy and Computer. Prepare for BATTLE!")
  end

  scenario "It lets the user select a two-player game" do
    sign_in_and_play_two
    expect(page).to have_text("Hello Amy and Bizarro Amy. Prepare for BATTLE!")
  end
end
