require 'rails_helper'

describe "Author page", :type => :feature do

  it "Saves the author" do
    visit new_author_path
    fill_in "author_first_name", with: "Alan"
    fill_in "author_last_name", with: "Turing"
    fill_in "author_homepage", with: "http://wikipedia.org/Alan_Turing"
    click_button "Create Author"
    Author.find_by!(:first_name => 'Alan', :last_name => 'Turing')
  end

  it "Should show validation errors" do
    visit new_author_path
    fill_in "author_first_name", with: "Alan"
    fill_in "author_homepage", with: "http://wikipedia.org/Alan_Turing"
    click_button "Create Author"
    expect(page).to have_text("Last name can't be blank")
  end

  it "Edit page should save changes" do
    @author = create(:author)
    visit edit_author_path(id: @author.id)
    # the guys name is Alan Mathison Turing
    fill_in "author_first_name", with: "Alan Mathison"
    click_button "Save author"
    expect(page).to have_text("First name: Alan Mathison")
  end

  it "Destroys/Deletes the author" do
    @author = create(:author)
    visit authors_path
    click_link "Destroy"
    expect(Author.find_by(id: @author.id)).to be_nil
  end
end
