require 'test_helper'

class VideoTest < Test::Unit::TestCase
  
  def test_new_video_is_unreleased
    video = Video.new
    assert video.unreleased?
  end
  
  def test_transition_to_state
    video = Video.new
    video.set_state NewReleaseState
    assert video.new_release?
    
    video.set_state UnreleasedState
    assert video.unreleased?
  end
  
  def test_release_video
    video = Video.new
    
    video.release
    
    assert video.new_release?
  end
  
  def test_defer_to_state_for_cost
    video = Video.new
    
    assert_nil video.rental_cost
    
    video.set_state NewReleaseState
    assert_equal 7, video.rental_cost
  end
  
  def test_shelve_video
    video = Video.new
    
    video.shelve
    
    assert video.standard_release?  
    assert !video.new_release?
  end
  
  def test_liquidate_video
    video = Video.new
    
    video.liquidate
    
    assert video.bargain_bin?
  end
  
  def test_recall_video
    video = Video.new
    
    video.recall
    
    assert video.unreleased?
  end
end