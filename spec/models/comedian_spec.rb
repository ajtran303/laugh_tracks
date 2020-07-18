require "rails_helper"

RSpec.describe Comedian do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_numericality_of :age }
    it { should validate_presence_of :city }
    it { should validate_presence_of :image_url }
  end

  describe "associations" do
    it { should have_many :tv_specials }
  end

  describe "methods" do
    image_url = "https://www.webfx.com/blog/images/cdn.designinstruct.com/files/582-how-to-image-placeholders/generic-image-placeholder.png"

    Comedian.create!(name: "Sasper", age: 100, city: "Boston", image_url: image_url)
    Comedian.create!(name: "Cpiderman", age: 28, city: "New York City", image_url: image_url)

    it ".average_age" do
      expect(Comedian.average_age).to eq(64)
    end

    it ".cities" do
      expect(Comedian.cities).to eq(["Boston", "New York City"])
    end
  end
end
