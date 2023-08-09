require 'rspec'
require_relative '../classes/item'
require_relative '../classes/genre'
require_relative '../classes/music_album'

describe MusicAlbum do
  it 'should require the item file' do
    expect(Item).to be
  end

  it 'should inherit from Item' do
    expect(MusicAlbum.ancestors).to include(Item)
  end

  it 'should have the correct attributes' do
    album = MusicAlbum.new('2023-08-09', true, %w[Ghazal Sad], 'Ghulam Ali', 'Ghazal')
    expect(album.publish_date).to eq('2023-08-09')
    expect(album.on_spotify).to eq(true)
    expect(album.genres).to eq(%w[Ghazal Sad])
    expect(album.author).to eq('Ghulam Ali')
    expect(album.album_name).to eq('Ghazal')
  end

  it 'should be able to be archived if on Spotify' do
    album = MusicAlbum.new('2023-08-09', true, %w[Ghazal Sad], 'Ghulam Ali', 'Ghazal')
    expect(album.can_be_archived?).to be(true)
  end
  
  it 'should not be able to be archived if not on Spotify' do
    album = MusicAlbum.new('2023-08-09', false, %w[Ghazal Sad], 'Ghulam Ali', 'Ghazal')
    expect(album.can_be_archived?).to be(false)
  end
end
