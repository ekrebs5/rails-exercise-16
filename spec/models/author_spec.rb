require 'rails_helper'

RSpec.describe Author, type: :model do
  it "Should create author" do
    build(:author)
  end
end
