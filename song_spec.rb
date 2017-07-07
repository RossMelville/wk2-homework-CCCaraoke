require 'minitest/autorun'
require 'minitest/rg'

require_relative '../song.rb'

class TestSong < Minitest::Test

  def setup

    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Waterfall", "Stone Roses")
    @song3 = Song.new("Live Forever", "Oasis")
    @song4 = Song.new("One", "Metallica")
    @song5 = Song.new("One", "Ed Sheran")
    
  end



end