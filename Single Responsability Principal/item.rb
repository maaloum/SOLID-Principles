class Item
  attr_accessor :code, :price, :quantity
  def initialize(code, price, quantity)
        @code = code
        @price =price
        @quantity = quantity
  end
end
