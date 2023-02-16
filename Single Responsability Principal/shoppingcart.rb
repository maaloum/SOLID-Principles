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
    stock.items.each {|i|
        if(i.code == item.code )
          if(i.quantity > item.quantity)
            @cartItems.push(item)
            return true
          else
            return false
          end
        end
    }
  end
end
