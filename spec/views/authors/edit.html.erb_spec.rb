require 'rails_helper'

RSpec.describe "authors/edit.html.erb", type: :view do
  before(:each) do
    @author = create(:author)
    assign(:author, @author)
    render
  end

  it "Should have First name Field" do
    expect(rendered).to have_field('First name')
  end
  it "Should have Last name Field" do
    expect(rendered).to have_field('Last name')
  end
  it "Should have Homepage Field" do
    expect(rendered).to have_field('Homepage')
  end
  it "Should have Save Author Submit Button" do
    expect(rendered).to have_button('Save author')
  end
end