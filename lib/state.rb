class State
  
  attr_reader :cost, :rental_period, :purchase_price
  
  def available_for_purchase?
    !!purchase_price
  end
  
end 