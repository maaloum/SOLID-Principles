require_relative 'shoppingcart'
class CreateInvoice
    def initialize
      @total = 0
    end
    def create_invoice(cartesitems)
      cartesitems.cartItems.each{
        |i| @total = @total + i.price

      }
      print_invoice
      return @total
    end

    def print_invoice
      p @total
    end
    # get customer data   -2
    # save to data base    -3
    # send invoice to customer email  -4


end
