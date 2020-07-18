require "rails_helper"

RSpec.describe TvSpecial do
  describe "associations" do
    it { should belong_to :comedian }
  end
end
