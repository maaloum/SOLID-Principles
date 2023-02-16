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
    # get customer data
    # save to data base
    # send invoice to customer email


end
