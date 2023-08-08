require 'rspec'
require_relative '../classes/item'
require_relative '../classes/genre'

describe 'Genre' do
  it 'should have a name' do
    genre = Genre.new('Rock')
    genre.name.should == 'Rock'
  end
end
