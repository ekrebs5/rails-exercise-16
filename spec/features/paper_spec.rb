require 'rails_helper'

describe "Paper page", :type => :feature do

it "Should show correct paper if year is given in url" do
  paper = create(:paper)
  create(:paper2)
  visit papers_path paper, :year => 1950
  expect(page).to_not have_text("go to statement considered harmful")
end

pending "save correct author test"

#  it "Should save paper with set authors" do
    #@paper = create(:paper)
    #visit edit_paper_path @paper

  #  click_button "Create Paper"
  #  Paper.find_by!()
  #end

end
