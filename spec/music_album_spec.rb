require 'rspec'
require_relative '../classes/item'
require_relative '../classes/genre'
require_relative '../classes/music_album'

describe 'MusicAlbum' do
  it 'should have a genre' do
    album = MusicAlbum.new(Time.now, Genre.new('Rock'), true)
    album.genre.name.should == 'Rock'
  end
end
