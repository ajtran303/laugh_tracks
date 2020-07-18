require "rails_helper"

RSpec.describe Comedian do
  describe "associations" do
    it { should have_many :tv_specials }
  end
end
