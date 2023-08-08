require_relative 'item'

class Genre < Item
  attr_accessor :name, :items

  def initialize(name)
    super(Date.today)
    @name = name
    @id = rand(1..1000)
    @items = []
  end

  def add_item(item)
    @item << item
    item.genre = self
    puts "Added #{item.title} to #{@name}" if $DEBUG == true
  end

  def to_json
    {
      id: @id,
      name: @name,
      items: @items.map(&:to_json)
    }
  end
end

# code for item.rb to save data to json file
# def to_json
#   {
#     id: @id,
#     publish_date: @publish_date,
#     archived: @archived,
#     label: @label,
#     genre: @genre,
#     author: @author
#   }
# end