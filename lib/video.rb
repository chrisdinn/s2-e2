require 'forwardable'

require 'video/merchandise_availability'
require 'video/new_release'
require 'video/standard_release'
require 'video/bargain_bin'
require 'video/unreleased'

class Video
  extend Forwardable
  
  attr_reader :rental_state
  
  def_delegators  :rental_state, :rental_cost, :rental_period, :purchase_price,
                  :available_for_purchase?, :available_for_rent?
      
  def initialize
    set_state Unreleased
  end
  
  def set_state(new_state)
    @rental_state = new_state.new
  end
  
  
  def unreleased?
    rental_state.kind_of? Unreleased
  end
  
  def new_release?
    rental_state.kind_of? NewRelease
  end
  
  def standard_release?
    rental_state.kind_of? StandardRelease
  end

  def bargain_bin?
    rental_state.kind_of? BargainBin
  end
  
  
  def release
    set_state NewRelease
  end
  
  def shelve
    set_state StandardRelease
  end
  
  def liquidate
    set_state BargainBin
  end
  
  def recall
    set_state Unreleased
  end
  
end
