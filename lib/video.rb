require 'state'
require 'unreleased_state'
require 'new_release_state'
require 'standard_release_state'
require 'bargain_bin_state'

class Video
  
  attr_reader :rental_state
      
  def initialize
    set_state UnreleasedState
  end
  
  def set_state(new_state)
    @rental_state = new_state.new
  end
  
  
  def unreleased?
    rental_state.kind_of? UnreleasedState
  end
  
  def new_release?
    rental_state.kind_of? NewReleaseState
  end
  
  def standard_release?
    rental_state.kind_of? StandardReleaseState
  end

  def bargain_bin?
    rental_state.kind_of? BargainBinState
  end
  
  
  def release
    set_state NewReleaseState
  end
  
  def shelve
    set_state StandardReleaseState
  end
  
  def liquidate
    set_state BargainBinState
  end
  
  def recall
    set_state UnreleasedState
  end
  
  def method_missing(method_name, *args)
    if rental_state.respond_to?(method_name)
      rental_state.send method_name
    else
      super method_name, *args
    end
  end
  
end