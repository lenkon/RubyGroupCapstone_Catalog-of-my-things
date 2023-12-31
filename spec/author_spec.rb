require 'rspec'
require_relative '../classes/game'
require_relative '../classes/author'

RSpec.describe Author do
  let(:author) { Author.new('Bruce', 'Willis') }
  let(:game) { Game.new('2021-01-01', 'multiplayer', '2023-08-08') }

  context 'When Author is created' do
    it 'should be an instance of Author' do
      expect(author).to be_an_instance_of(Author)
    end

    it 'should have a first name' do
      expect(author.first_name).to eq('Bruce')
    end

    it 'should have a last name' do
      expect(author.last_name).to eq('Willis')
    end

    it 'should have an id' do
      expect(author.id).to be_between(1, 1000)
    end

    it 'should have an empty array of items' do
      expect(author.items).to eq([])
    end
  end

  describe '#add_item' do
    it 'add game item to author' do
      author.add_item(game)
      expect(author.items).to include(game)
    end

    it 'game item should have author' do
      author.add_item(game)
      expect(game.author).to eq(author)
    end

    it 'does not duplicate items' do
      author.add_item(game)
      author.add_item(game)
      expect(game.author).to eq(author)
    end
  end
end
