require_relative './order.rb'
class CashOrder < Order

  def process_cash_invoice
    "cash"
  end
end
