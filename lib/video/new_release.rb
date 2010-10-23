class Video
  class NewRelease
    include MerchandiseAvailability
  
    def rental_cost
      7
    end
  
    def rental_period
      1
    end
  
    def purchase_price
      nil
    end
    
  end
end