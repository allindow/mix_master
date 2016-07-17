require 'rails_helper'

RSpec.feature "User edits a playlist" do
  scenario "They go to edit page and change playlist name and songs" do
    song_one, song_two, song_three= create_list(:song, 3)
    playlist = Playlist.create(name: "Road Trip", song_ids: [song_one.id, song_three.id])

    visit playlist_path(playlist)
    click_on "Edit"
    fill_in "playlist_name", with: "On the Road"
    check("song-#{song_two.id}")
    uncheck("song-#{song_three.id}")
    click_on "Update Playlist"

    expect(page).to have_content "On the Road"
    within ("ul") do
      expect(page).to have_link song_one.title, href: song_path(song_one.id)
      expect(page).to_not have_link song_three.title, href: song_path(song_three.id)
      expect(page).to have_link song_two.title, href: song_path(song_two.id)
    end


  end
end
