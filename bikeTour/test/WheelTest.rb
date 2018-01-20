require 'minitest/autorun'
require './practice/Wheel'

# 個人的にはこれはよくないと思う
class DiameterDouble
  def diameter
    29
  end
end

class WheelTest < Minitest::Test
  def setup
    @observer = MiniTest::Mock.new
    @gear_with_mock = Gear.new(
    chainring: 52,
    cog: 11,
    wheel: DiameterDouble.new,
    observer: @observer
    )
  end

  def test_calc_diameter
    wheel = Wheel.new(26, 1.5)

    assert_in_delta(29, wheel.diameter, 0.01)
  end

  def test_calc_gear_inches
    gear = Gear.new(
    chainring: 52,
    cog: 11,
    wheel: DiameterDouble.new
    )
    assert_in_delta(137.1, gear.gear_inches, 0.01)
  end

  def test_nitifies_observers_when_cogs_change
    @observer.expect(:changed, true, [52,27])
    @gear_with_mock.set_cog(27)
    @observer.verify
  end
end
