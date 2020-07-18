require "rails_helper"

RSpec.describe "Comedians Index Spec" do
  before :each do
    @casper = Comedian.create!(name: "Casper", age: 100, city: "Boston")
    @spiderman = Comedian.create!(name: "Spiderman", age: 28, city: "New York City")
  end

  describe "As a visitor" do
    describe "When I visit /comedians" do
      it "I see a list of comedians' Name, Age, and City" do
        visit "/comedians"

        within(".casper") do
          expect(page).to have_content("Name: #{@casper.name}")
          expect(page).to have_content("Age: #{@casper.age}")
          expect(page).to have_content("City: #{@casper.city}")
        end

        within(".spiderman") do
          expect(page).to have_content("Name: #{@spiderman.name}")
          expect(page).to have_content("Age: #{@spiderman.age}")
          expect(page).to have_content("City: #{@spiderman.city}")
        end
      end
    end
  end

end
