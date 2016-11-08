require 'rails_helper'

RSpec.describe "authors/new.html.erb", type: :view do
  before(:each) do
    assign(:author, Author.new)
  end

  it "Should have First name Field" do
    render :template =>"authors/new.html.erb"
    expect(rendered).to have_field('First name')
  end
  it "Should have Last name Field" do
    render :template =>"authors/new.html.erb"
    expect(rendered).to have_field('Last name')
  end
  it "Should have Homepage Field" do
    render :template =>"authors/new.html.erb"
    expect(rendered).to have_field('Homepage')
  end
  it "Should have Create Author Submit Button" do
    render :template =>"authors/new.html.erb"
    expect(rendered).to have_button('Create Author')
  end
end
