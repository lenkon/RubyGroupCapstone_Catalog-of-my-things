# Item class
class Item
    attr_accessor :id, :publish_date, :archived
  
    def initialize(date)
      @publish_date = date
      @id = rand(1..1000)
      @archived = false
    end
  
  end