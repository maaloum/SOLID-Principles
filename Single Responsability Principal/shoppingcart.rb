require_relative 'item'
require_relative 'stock'

class ShoppingCart < Stock
  attr_accessor :cartItems
  def initialize
    super()
    @cartItems = []
  end

  def remove_item?(item)
    if(cartItems.include?(item))
      cartItems.delete(item)
      return true
    else
      return false
    end

  end
  def add_item?(item)
    #check the available quantity in the store
    stock = Stock.new
    stock.items.each {|i|       # -1
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
