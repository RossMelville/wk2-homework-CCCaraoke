require 'minitest/autorun'
require 'minitest/rg'
require 'pry'

require_relative '../bar.rb'

class TestBar < Minitest::Test

  def setup
    @bar = Bar.new()
  



  end

  def test_drinks_list
    result = @bar.drinks
    assert_equal(3, result.count)
  end


end