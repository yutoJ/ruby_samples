class GearCBO
  attr_reader :chainring, :cog, :wheel
  def initiialize(chainring, cog, wheel)
    @chainring = chainring
    @cog = cog
    #javaならwheelはdiameterの実装を持つinterfaceとして表す必要があり、
    #このような実装の積み重ねがinterfaceをごちゃごちゃにしそう。
    @wheel = wheel
  end

  def gear_inches
    ratio * diameter
  end
  def ratio
  end

  def diameter
    wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire
  def initiialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + ( tire * 2)
  end
end
