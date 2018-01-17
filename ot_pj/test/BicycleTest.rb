require 'minitest/autorun'
require './lib/Gear'

class BicycleTest < Minitest::Test
  def test_calc_ratio
    assert_equal 4.72, Gear.new(52,11).ratio
    assert_equal 1.11, Gear.new(30,27).ratio
  end
end
