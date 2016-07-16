require 'rails_helper'

RSpec.feature "User deletes an artist" do
  scenario "user deletes one of two artists" do
    artist1 = Artist.create(name: "Prince", image_path: "http://i.dailymail.co.uk/i/pix/2016/04/24/19/336A2A9400000578-3556513-image-m-8_1461521224235.jpg")
    artist2 = Artist.create(name: "Hanson", image_path: "http://pixel.nymag.com/imgs/daily/vulture/2016/03/22/22-hanson-brothers.w529.h352.jpg")

    visit artist_path(artist1)
    click_on "Delete"
    expect(page).to_not have_content("Prince")
  end
end
