require_relative 'item'

class Genre
  attr_accessor :name, :items

  def initialize(name)
    @name = name
    @id = rand(1..1000)
    @items = []
  end

  def add_item(item)
    @item << item
    item.genre = self
    puts "Added #{item.title} to #{@name}" if $DEBUG == true
  end
end
