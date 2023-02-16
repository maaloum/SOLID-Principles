require_relative 'stock'
require_relative 'item'
require_relative 'shoppingcart'
require_relative 'invoice'

item = Item.new("123", 183, 7)
item2 = Item.new("123", 102, 5)
shopcart = ShoppingCart.new
stock = Stock.new
invoice = CreateInvoice.new
shopcart.add_item(item)
shopcart.add_item(item2)
p shopcart.cartItems
shopcart.remove_item(item)
p shopcart.cartItems
invoice.create_invoice(shopcart)
