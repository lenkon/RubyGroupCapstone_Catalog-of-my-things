require_relative 'item'

# Genre
class Genre
  attr_accessor :name
  attr_reader :items

  def initialize(name)
    @name = name
    @id = rand(1..1000)
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
    puts "Added #{item.title} to #{@name}" if $DEBUG == true
  end
end
