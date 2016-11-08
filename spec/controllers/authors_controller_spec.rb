require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "Saves the author" do
      visit new_author_path
      fill_in "author_first_name", with: "Alan"
      fill_in "author_last_name", with: "Turing"
      fill_in "author_homepage", with: "http://wikipedia.org/Alan_Turing"
      click_button "Create Author"
      expext(Author.find_by(first_name:"Alan", last_name:"Turing"))
    end
  end
end
