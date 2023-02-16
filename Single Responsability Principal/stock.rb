require_relative 'item'

class Stock < Item
  attr_accessor :items
    def initialize
      @items = [
        Item.new("123", 10, 10),
        Item.new("134", 12, 2),
        Item.new("173", 121, 11),
        Item.new("103", 29, 19)]
    end
end
