class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args = {})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size

    extended_initialize(args)
  end

  def extended_initialize
    nil
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot repond to."
  end

  def spares{
    chain: chain,
    tire_size: tire_size
    }
  end

  def default_chain
    '10-spped'
  end
end


class RoadBike < Bicycle
  def default_tire_size
    '23'
  end
end

class MountainBike < Bicycle
  def default_tire_size
    '30'
  end
  def spares
    super.merge{{rear_shock: rear_shock}}
end

class ProtoBike < Bicycle
end


puts RoadBike.new(size: 10).tire_size
puts MountainBike.new(size: 10).tire_size
puts ProtoBike.new(size: 10) #ERROR
