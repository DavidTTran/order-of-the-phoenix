require 'rails_helper'

describe "as a user" do
  it "can search for members of a house" do
    visit "/"
    click_on "Search For Members"
    expect(page).to have_content("Gryffindor Members of the Order of the Phoenix")
    expect(page).to have_content("21 Gryffindor Members")
  end

  it "can view detailed info for each member" do
    visit "/"
    click_on "Search For Members"
    expect(page).to have_content("Name: Harry Potter")
    expect(page).to have_content("Role: student")
    expect(page).to have_content("House: Gryffindor")
    expect(page).to have_content("Patronus: stag")
  end
end
