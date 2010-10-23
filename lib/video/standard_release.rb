class Video
  class StandardRelease
    include MerchandiseAvailability
  
    def rental_cost
      4
    end
  
    def rental_period
      3
    end
  
    def purchase_price
      15
    end
  
  end
end