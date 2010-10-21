class State
  
  attr_reader :rental_cost, :rental_period, :purchase_price
  
  def available_for_purchase?
    !!purchase_price
  end
  
  def available_for_rent?
    !!rental_cost
  end
  
end 