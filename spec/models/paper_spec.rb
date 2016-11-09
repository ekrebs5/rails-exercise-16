require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "Should not validate without title" do
      @paper = Paper.new(venue: "mind 49: 433-460", year: 1950)
      expect(@paper).to_not be_valid
  end

  it "Should not validate without venue" do
    @paper = Paper.new(title: "Add interesting title here", year: 1950)
    expect(@paper).to_not be_valid
  end

  it "Should not validate without year" do
    @paper = Paper.new(title: "Add interesting title here", venue: "mind 49: 433-460")
    expect(@paper).to_not be_valid
  end

  it "Should not validate with non-integer year" do
      @paper = Paper.new(title: "Add interesting title here", venue: "mind 49: 433-460", year: "ninety-nine")
      expect(@paper).to_not be_valid
  end

  it "Should have author list" do
    @paper = Paper.new
    expect(@paper.authors).not_to be_nil
  end
end
