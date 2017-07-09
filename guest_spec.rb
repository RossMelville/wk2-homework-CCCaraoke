require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guest.rb'

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Ross", 100, "Waterfall", "Stone Roses")
    @guest2 = Guest.new("Drew", 200, "One", "Metallica")
    @guest3 = Guest.new("Stephen", 2, "Love is the Law", "Seahorses")
    @guest4 = Guest.new("Gary", 500, "Waterfall", "Stone Roses")

    @drink1 = Drink.new("Beer", 2.50)
    @drink2 = Drink.new("Wine", 3.00)
    @drink3 = Drink.new("Cocktail", 5.00)

  end 

  def test_return_guest_name
    assert_equal("Drew", @guest2.guest_name)
  end

  def test_return_balance_of_money
    assert_equal(500, @guest4.money_balance)
  end

  def test_reduce_balance_of_money
    @guest1.pay_money(10)
    assert_equal(90, @guest1.money_balance)
  end

  def test_reduce_balance_of_money__insufficient_funds
    assert_equal("Sorry you don't have enough funds", @guest3.pay_money(10))
  end

  def test_add_drink_to_tab
    @guest1.add_drink_to_tab(@drink1)
    assert_equal(2.5, @guest1.tab)
  end


end