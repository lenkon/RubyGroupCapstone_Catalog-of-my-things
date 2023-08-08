require 'spec'
require_relative '../classes/item'
require_relative '../classes/music_album'
require_relative '../classes/genre'

describe Genre do
  it 'can add an item' do
    genre = Genre.new('Rock')
    album = MusicAlbum.new(Date.today, 'Rock', true)
    genre.add_item(album)
    assert album.genre == genre
    assert genre.items.include?(album)
  end
end
