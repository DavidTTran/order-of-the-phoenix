require 'rails_helper'

describe "as a user" do
  it "can search for members of a house" do
    visit "/"
    click_on "Search For Members"
    expect(page).to have_content("Gryffindor Members of the Order of the Phoenix")
  end

  it "can view detailed info for each member" do
    visit "/"
    click_on "Search For Members"
    
  end
end
