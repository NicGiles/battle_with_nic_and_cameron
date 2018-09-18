def sign_in_and_play
  visit("/")
  fill_in("Player_1", with: "Cameron")
  fill_in("Player_2", with: "Nic")
  click_button("±± Let's Play Battle ±±")
end 
