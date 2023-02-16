require_relative 'item'
require_relative 'stock'

class ShoppingCart < Stock
  attr_accessor :cartItems
  def initialize
    super()
    @cartItems = []
  end

  def remove_item(item)
    p 'I am in'
    if(cartItems.include?(item))
      cartItems.remove(item)
    end
  end
  def add_item?(item)
    #check the available quantity in the store
    stock = Stock.new
    quantity_in_stock = stock[item].quantity
    if(quantity_in_stock > item.quantity)
      @cartItems.push(item)
      return true
    else
      return flase
    end
  end
end
