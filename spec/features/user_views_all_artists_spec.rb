require 'rails_helper'

RSpec.feature "user can view all artists" do
  scenario "they go to the index page" do
    artist1 = Artist.create(name: "Prince", image_path: "http://i.dailymail.co.uk/i/pix/2016/04/24/19/336A2A9400000578-3556513-image-m-8_1461521224235.jpg")
    artist2 = Artist.create(name: "Hanson", image_path: "http://pixel.nymag.com/imgs/daily/vulture/2016/03/22/22-hanson-brothers.w529.h352.jpg")

    visit artists_path

    expect(page).to have_link("Prince", href: artist_path(artist1))
    expect(page).to have_link("Hanson", href: artist_path(artist2))
  end
end
