require 'test_helper'

class UnreleasedStateTest < Test::Unit::TestCase
  
  def test_all_handles_nil
    unreleased = Video::Unreleased.new
    
    assert_nil unreleased.rental_cost
    assert_nil unreleased.rental_period
    assert_nil unreleased.purchase_price
  end
  
end