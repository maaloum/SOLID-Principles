require_relative './order.rb'
class OnlineOrder < Order
  def process_online_payement_invoice
    "Online Payement"
  end
end
