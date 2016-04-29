
feature "Hit points" do
  scenario "Show Players hit point" do
    sign_in_and_play_two
    expect(page).to have_text("Bizarro Amy has 100 hit points")
    expect(page).to have_text("Amy has 100 hit points")
  end
end
