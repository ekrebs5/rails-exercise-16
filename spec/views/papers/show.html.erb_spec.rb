require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      :title => "Title",
      :venue => "Venue",
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/1/)
  end

  it "should display authors" do
    @paper = create(:paper)
    assign(:paper, @paper)
    render
    expect(rendered).to have_text(@paper.authors[0].name)
  end
end
