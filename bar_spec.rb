require 'minitest/autorun'
require 'minitest/rg'
require 'pry'

require_relative '../bar.rb'

class TestBar < Minitest::Test

  def setup
    @bar = Bar.new()

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

  def test_drinks_list
    result = @bar.drinks
    assert_equal(3, result.count)
  end

  def test_add_song_to_bar
    @bar.add_song_to_bar(@song1)
    assert_equal(1, @bar.playlist.count)
  end

  def test_add_person_to_bar
    @bar.add_person_to_bar(@guest1)
    result = @bar.people
    assert_equal(1, @bar.people.count)
  end

  def test_add_person_to_bar__capacity_full

  end


end