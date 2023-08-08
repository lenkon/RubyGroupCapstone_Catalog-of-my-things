require 'spec'
require_relative '../classes/item'
require_relative '../classes/music_album'
require_relative '../classes/genre'

describe MusicAlbum do
  it 'can be archived if on Spotify' do
    album = MusicAlbum.new(Date.today, 'Rock', true)
    assert album.can_be_archived?
  end

  it 'cannot be archived if not on Spotify' do
    album = MusicAlbum.new(Date.today, 'Rock', false)
    assert_false album.can_be_archived?
  end
end