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
    
    @drink1 = Drink.new("Beer", 2.50)
    @drink2 = Drink.new("Wine", 3.00)
    @drink3 = Drink.new("Cocktail", 5.00)


  end

  def test_add_drink_to_bar
    @bar.add_drink_to_bar(@drink1)
    assert_equal(1, @bar.drinks.count)
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
    @bar.add_person_to_bar(@guest1)
    @bar.add_person_to_bar(@guest2)
    result = @bar.add_person_to_bar(@guest3)
    assert_equal("Sorry buddy, the bars full", result)
  end

  # def test_add_a_tab_for_a_guest
  #   @bar.add_tab(@guest1)
  #   assert_equal(1, @bar.tabs.count)
  # end

  # def test_add_drink_to_persons_tab
  #   @bar.add_tab(@guest1)
  #   @bar.add_drink_to_tab(@guest1, @drink1)
  #   assert_equal("Beer", @bar.tabs)
  # end

end