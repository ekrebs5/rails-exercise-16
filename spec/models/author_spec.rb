require 'rails_helper'

RSpec.describe Author, type: :model do
  it "Should create author" do
    build(:author)
  end
  it "Should return full name" do
    @author = build(:author)
    expect(@author.name).to eq("Alan Turing")
  end
end
