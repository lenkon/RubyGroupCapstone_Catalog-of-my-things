# require 'active_support/core_ext/numeric/time'
# require './book'

# Item class
class Item
  attr_accessor :id, :publish_date, :archived, :label, :genre, :author

  def initialize(date)
    @publish_date = date
    @id = rand(1..1000)
    @archived = false
  end

  def add_label(label)
    @label = label
  end

  def can_be_archived?
    # @publish_date < 10.years.ago equivalent statement below
    @publish_date < Time.now - (10 * 365 * 24 * 60 * 60) # 10 years in seconds
  end

  def move_to_archive
    self.archived = can_be_archived?
  end
end
