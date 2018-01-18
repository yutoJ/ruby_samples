require 'minitest/autorun'
require './lib/Gear'

class BicycleTest < Minitest::Test
  def test_calc_ratio
    assert_equal 4.72, Gear.new(52,11, 1, 1).ratio
    assert_equal 1.11, Gear.new(30,27, 1, 1).ratio
  end

  def test_calc_gearInch
    assert_equal 4.72 * 3, Gear.new(52,11, 1, 1).gearInch
    assert_equal 1.11 * 5, Gear.new(30,27, 1, 2).gearInch
  end
end
