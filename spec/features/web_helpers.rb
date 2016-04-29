
def sign_in_and_play_two
  visit "/"
  click_button "two_players"
  fill_in "player_1_name", :with => "Amy"
  fill_in "player_2_name", :with => "Bizarro Amy"
  click_button "Submit"
end

def sign_in_and_play_one
  visit "/"
  click_button "one_player"
  fill_in "player_1_name", :with => "Amy"
  click_button "Submit"
end

def attack_confirmation
	click_link 'Attack'
    click_button 'OK'
end
