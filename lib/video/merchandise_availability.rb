class Video
  module MerchandiseAvailability

    def available_for_purchase?
      !!purchase_price
    end

    def available_for_rent?
      !!rental_cost
    end

  end
end