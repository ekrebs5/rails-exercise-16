require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "Should not validate without title" do
      @paper = Paper.new(venue: "mind 49: 433-460", year: 1950)
      expect(@paper).to_not be_valid
  end
end
