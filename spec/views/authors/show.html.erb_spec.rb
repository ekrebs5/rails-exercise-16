require 'rails_helper'

RSpec.describe "authors/show.html.erb", type: :view do
  it "Should have author name text" do
    @author = create(:author)
    assign(:author, @author)
    render
    expect(rendered).to have_text('First name: Alan')
  end
end
