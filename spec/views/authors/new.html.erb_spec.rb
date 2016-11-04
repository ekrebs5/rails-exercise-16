require 'rails_helper'

RSpec.describe "authors/new.html.erb", type: :view do
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
end
