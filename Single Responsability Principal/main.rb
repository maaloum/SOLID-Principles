require_relative 'stock'
require_relative 'item'
require_relative 'shoppingcart'

item = Item.new("123", 10, 10)
shopcart = ShoppingCart.new
stock = Stock.new
p shopcart.items
p shopcart.remove_item(item)
