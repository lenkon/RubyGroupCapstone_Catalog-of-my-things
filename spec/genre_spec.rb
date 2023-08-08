# require 'spec'
# require_relative '../classes/item'
# require_relative '../classes/music_album'
# require_relative '../classes/genre'

# describe Genre do
#   it 'can add an item' do
#     genre = Genre.new('Rock')
#     album = MusicAlbum.new(Date.today, 'Rock', true)
#     genre.add_item(album)
#     assert album.genre == genre
#     assert genre.items.include?(album)
#   end
# end

require 'rspec'
require_relative '../classes/genre'

# Mock Item klasa
class Item
  attr_accessor :genre

  def initialize(id, name)
    @id = id
    @name = name
    @genre = nil
  end
end

RSpec.describe Genre do
  describe '#add_item' do
    it 'adds an item to the genre' do
      genre = Genre.new(1, 'Comedy', [])
      item = Item.new(1, 'The Hangover')
      genre.add_item(item)
      expect(genre.items).to include(item)
      expect(item.genre).to eq(genre)
    end
  end
end