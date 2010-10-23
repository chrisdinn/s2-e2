require 'test_helper'

class NewReleaseStateTest < Test::Unit::TestCase
  
  def test_cost
    assert_equal 7, new_release.rental_cost
  end
    
  def test_rental_period
    assert_equal 1, new_release.rental_period
  end
  
  def test_purchase_price
    assert_nil new_release.purchase_price
  end
  
  def test_purchase_availability
    assert !new_release.available_for_purchase?
  end
  
  def test_rental_availability
    assert new_release.available_for_rent?
  end
  
    
  def new_release
    Video::NewRelease.new
  end

end