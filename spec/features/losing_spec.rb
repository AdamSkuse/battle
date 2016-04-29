feature 'losing' do

	scenario 'player 2 loses when their hit points reach 0' do
		sign_in_and_play_two
		allow(Kernel).to receive(:rand){ 10 }
		18.times { attack_confirmation }
		click_link 'Attack'
		expect(page).to have_content("Bizarro Amy loses!")
	end

end
