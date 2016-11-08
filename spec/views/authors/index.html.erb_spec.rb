require 'rails_helper'

RSpec.describe "authors/index.html.erb", type: :view do
  before(:each) do
    @author = create(:author)
    assign(:authors, Author.all)
    render :template =>"authors/index.html.erb"
  end

  after(:each) do
    Author.delete(@author)
  end

  it "Should display authors name" do
    expect(rendered).to have_text(@author.name)
  end

  it "Should display link to new author page" do
    expect(rendered).to have_css('a', :text => 'Add author')
  end

  it "Should link to edit author page" do
    expect(rendered).to have_css('a', :text => 'Edit')
  end
end
