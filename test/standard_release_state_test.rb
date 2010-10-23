require 'test_helper'

class StandardReleaseStateTest < Test::Unit::TestCase
  
  def test_cost
    assert_equal 4, standard_release.rental_cost
  end
    
  def test_rental_period
    assert_equal 3, standard_release.rental_period
  end
  
  def test_purchase_price
    assert_equal 15, standard_release.purchase_price
  end
    
  def test_purchase_availability
    assert standard_release.available_for_purchase?
  end
  
  def test_rental_availability
    assert standard_release.available_for_rent?
  end
  
    
  def standard_release
    Video::StandardRelease.new
  end
  
end