require 'rails_helper'

RSpec.describe Author, type: :model do
  it "Should create author" do
    build(:author)
  end

  it "Should return full name" do
    @author = build(:author)
    expect(@author.name).to eq("Alan Turing")
  end

  it "Should not validate without last name" do
    @author = Author.new(first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(@author).to_not be_valid
  end
end
