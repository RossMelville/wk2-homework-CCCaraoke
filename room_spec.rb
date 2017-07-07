require 'minitest/autorun'
require 'minitest/rg'
require 'pry'

require_relative '../room.rb'
require_relative '../guest.rb'
require_relative '../song.rb'

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Green Room", 10)
    @room2 = Room.new("Blue Room", 2)

    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Waterfall", "Stone Roses")
    @song3 = Song.new("Live Forever", "Oasis")
    @song4 = Song.new("One", "Metallica")
    @song5 = Song.new("One", "Ed Sheran")

    @guest1 = Guest.new("Ross", 100, "Waterfall", "Stone Roses")
    @guest2 = Guest.new("Drew", 200, "One", "Metallica")
    @guest3 = Guest.new("Stephen", 2, "Love is the Law", "Seahorses")
    @guest4 = Guest.new("Gary", 500, "Waterfall", "Stone Roses")

    

  end

  def test_capacity_of_room
    assert_equal(10, @room1.room_capacity)
  end

  def test_add_song_to_room
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.playlist.length)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest2)
    assert_equal(1, @room1.people.length)
  end

  def test_add_guest_to_room__capacity_full
    @room2.add_guest_to_room(@guest2)
    @room2.add_guest_to_room(@guest3)
    result = @room2.add_guest_to_room(@guest4)
    assert_equal("Sorry buddy, rooms full", result)
  end

  def test_remove_guest_from_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.remove_guest_from_room(@guest2)
    assert_equal(1, @room1.people.count)
  end

  def test_adding_song_to_room
    
  end

  # def test_search_song_by_title
  #   @room1.add_song_to_room(@song1)
  #   result = @room1.search_song_by_title("Wonderwall")
  #   assert_equal(["Wonderwall", "Oasis"], result)
  # end

 






end