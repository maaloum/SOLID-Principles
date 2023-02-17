require_relative 'item'
require_relative 'stock'

class ShoppingCart
  attr_accessor :cartItems
  def initialize
    super()
    @cartItems = []
  end

  def remove_item(item)
    if(@cartItems.include?(item))
      @cartItems.delete(item)
    end
  end
  def add_item(item)
    if(Stock.new.check_quantity?(item))
      @cartItems.push(item)
    end
  end
end
