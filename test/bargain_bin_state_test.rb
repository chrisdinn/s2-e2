require 'test_helper'

class BargainBinStateTest < Test::Unit::TestCase
  
  def test_cost
    assert_equal 2, bargain_bin.rental_cost
  end
    
  def test_rental_period
    assert_equal 7, bargain_bin.rental_period
  end
  
  def test_purchase_price
    assert_equal 10, bargain_bin.purchase_price
  end
    
  def bargain_bin
    Video::BargainBin.new
  end
  
end