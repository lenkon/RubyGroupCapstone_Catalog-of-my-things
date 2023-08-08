require 'rspec'
require_relative '../classes/item'

describe 'MusicAlbum' do
  before(:each) do
    @album = MusicAlbum.new(Time.now)
  end

  it 'should have a genre' do
    @album.genre = 'Rock'
    @album.genre.should == 'Rock'
  end

  it 'should have an artist' do
    @album.artist = 'The Beatles'
    @album.artist.should == 'The Beatles'
  end
end
