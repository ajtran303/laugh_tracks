require "rails_helper"

RSpec.describe "Comedian New Page Spec" do
  describe "As a visitor" do
    describe "When I visit '/comedians/new' and create a new comedian" do
      it "I see the new comedian's data on the '/comedians' page" do
        visit "comedians/new"

        fill_in :name, with: "Mina Harker"
        fill_in :age, with: 30
        fill_in :city, with: "London"
        fill_in :image_url, with: "https://www.webfx.com/blog/images/cdn.designinstruct.com/files/582-how-to-image-placeholders/generic-image-placeholder.png"
        click_button "Submit New Comedian"

        expect(current_path).to eq("/comedians")

        within(".mina-harker") do
          expect(page).to have_content("Name: Mina Harker")
          expect(page).to have_content("Age: 30")
          expect(page).to have_content("City: London")
          expect(page).to have_css("img[src*='generic-image-placeholder']")
          expect(page).to have_css("img[alt='Image of the comedian Mina Harker']")

        end
      end
    end
  end
end
