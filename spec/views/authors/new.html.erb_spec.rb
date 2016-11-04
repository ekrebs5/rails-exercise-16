require 'rails_helper'

RSpec.describe "authors/new.html.erb", type: :view do
  it "Should have First name Field" do
    render :template =>"authors/index.html.erb"
    expect(rendered).to have_field('First_name')
  end
end
