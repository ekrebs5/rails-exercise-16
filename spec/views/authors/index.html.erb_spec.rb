require 'rails_helper'

RSpec.describe "authors/index.html.erb", type: :view do
  it "Should display authors name" do
    @author = create(:author)
    assign(:authors, Author.all)
    render :template =>"authors/index.html.erb"
    expect(rendered).to have_text(@author.name)
  end
end
