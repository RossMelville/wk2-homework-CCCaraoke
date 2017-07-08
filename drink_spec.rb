require 'minitest/autorun'
require 'minitest/rg'
require 'pry'

require_relative '../drink.rb'

class TestDrink < Minitest::Test

  def setup
    @drink1 = Drink.new("Beer", 2.50)
    @drink2 = Drink.new("Wine", 3.00)
    @drink3 = Drink.new("Cocktail", 5.00)
  end

  

end