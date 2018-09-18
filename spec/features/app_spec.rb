require 'capybara/rspec'


feature "The home page says" do
  scenario "go to home page" do
    sign_in_and_play
    expect(page).to have_content "Cameron VS Nic"
  end

  scenario "go to home page" do
    sign_in_and_play
    expect(page).to have_content "Cameron: 400 HP"
  end

  scenario "go to home page" do
    sign_in_and_play
    expect(page).to have_content "Nic: 400 HP"
  end

  scenario "Nic attacks" do
    sign_in_and_play
    click_button("Player 2 attack")
    expect(page).to have_content "Cameron: 300 HP"
  end

  scenario "Player attacks to victory" do
    sign_in_and_play
    4.times {click_button("Player 2 attack")}
    expect(page).to have_content "Nic Wins!! Congratulations. Well Played. Cameron Loses. Incredible"
  end

end
