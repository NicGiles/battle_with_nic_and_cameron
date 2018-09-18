require 'capybara/rspec'


feature "The home page says" do

      scenario "go to home page" do
          visit("/")
          fill_in("Player_1", with: "Cameron")
          fill_in("Player_2", with: "Nic")
          click_button("±± Let's Play Battle ±±")
          expect(page).to have_content "Cameron VS Nic"
        end

end
