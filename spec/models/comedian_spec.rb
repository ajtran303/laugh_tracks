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
end
