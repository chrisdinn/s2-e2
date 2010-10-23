class Video
  class BargainBin
    include MerchandiseAvailability
  
    def rental_cost
      2
    end
  
    def rental_period
      7
    end
  
    def purchase_price
      10
    end
  
  end
end