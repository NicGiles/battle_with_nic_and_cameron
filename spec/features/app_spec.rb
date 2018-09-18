require 'capybara/rspec'


feature "The home page says" do
  scenario "go to home page" do
    sign_in_and_play
    expect(page).to have_content "Cameron VS Nic"
  end

  scenario "go to home page" do
    sign_in_and_play
    expect(page).to have_content "Cameron: 600 HP"
  end

  scenario "go to home page" do
    sign_in_and_play
    expect(page).to have_content "Nic: 600 HP"
  end

  scenario "Nic attacks" do
    sign_in_and_play
    click_button("Player 2 attack")
    expect(page).to have_content "Cameron: 550 HP"
  end

end
