require "rails_helper"

RSpec.describe "Comedians Index Spec" do
  before :each do
    @image_url = "https://www.webfx.com/blog/images/cdn.designinstruct.com/files/582-how-to-image-placeholders/generic-image-placeholder.png"

    @casper = Comedian.create!(name: "Casper", age: 100, city: "Boston", image_url: @image_url)
    @spiderman = Comedian.create!(name: "Spiderman", age: 28, city: "New York City", image_url: @image_url)

    @spooktober1 = @casper.tv_specials.create!(name: "Spook-Tober!", run_time: 80 )
    @spooktober2 = @casper.tv_specials.create!(name: "Spook-Tober! Encore!", run_time: 120 )

    @spidertober = @spiderman.tv_specials.create!(name: "Spiderman: The Comedy!", run_time: 90 )

    visit "/comedians"
  end

  describe "As a visitor" do
    describe "When I visit /comedians" do
      it "I see a list of comedians' Name, Age, and City" do
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

      it "I see a list of each comedian's TV specials' names and run times" do
        within(".casper") do
          expect(page).to have_content("#{@casper.name}'s TV Specials:")
          expect(page).to have_content("#{@spooktober1.name} (#{@spooktober1.run_time} mins)")
          expect(page).to have_content("#{@spooktober2.name} (#{@spooktober2.run_time} mins)")
        end

        within(".spiderman") do
          expect(page).to have_content("#{@spiderman.name}'s TV Specials:")
          expect(page).to have_content("#{@spidertober.name} (#{@spidertober.run_time} mins)")
        end
      end
    end
  end

end
