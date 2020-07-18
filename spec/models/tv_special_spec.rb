require "rails_helper"

RSpec.describe TvSpecial do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_numericality_of :run_time }
  end

  describe "associations" do
    it { should belong_to :comedian }
  end
end
