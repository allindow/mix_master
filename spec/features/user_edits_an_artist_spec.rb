require 'rails_helper'

RSpec.feature "User can edit an artist" do
  scenario "they change the name of an existing artist" do
    artist_image_path = 'http://pixel.nymag.com/imgs/daily/vulture/2016/03/22/22-hanson-brothers.w529.h352.jpg'
    artist = Artist.create(name: "Hnsn", image_path: artist_image_path)

    visit artist_path(artist)
    expect(page).to have_content "Hnsn"
    click_on "Edit Artist"
    fill_in "artist_name", with: "Hanson"
    click_on "Update Artist"

    expect(page).to have_content "Hanson"
    expect(page).to have_css("img[src*='hanson']")
  end
end
