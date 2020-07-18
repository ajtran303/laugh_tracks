require "rails_helper"

RSpec.describe Comedian do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_numericality_of :age }
    it { should validate_presence_of :city }
  end

  describe "associations" do
    it { should have_many :tv_specials }
  end
end
