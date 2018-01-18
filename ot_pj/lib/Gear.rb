class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end


  def ratio
    ( @chainring / @cog.to_f ).floor(2)
  end

  # funny
  def wheel
    @rim + ( @tire * 2 )
  end

  # funny
  def gearInch
    wheel * ratio
  end
end
