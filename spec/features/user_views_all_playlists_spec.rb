require 'rails_helper'

RSpec.feature "User views all playlists" do
  scenario "they see the list of all playlists" do
    song_one, song_two = create_list(:song, 2)
    playlist1 = Playlist.create(name: "Road Trip", song_ids: [song_one.id, song_two.id])
    playlist2 = Playlist.create(name: "My Jams", song_ids: [song_one.id, song_two.id])

    visit playlists_path

    expect(page).to have_link playlist1.name, href: playlist_path(playlist1)
    expect(page).to have_link playlist2.name, href: playlist_path(playlist2)
  end
end
