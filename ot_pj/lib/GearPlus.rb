class GearPlus
  attr_reader :wheels
  def initiialize(data)
    @wheels = wheelify(data)
  end

  def gear_inches
    ratio * diameter
  end

  def ratio
  end

  def diameters
    @wheels.collect { |wheel| diameter(wheel) }
  end


  Wheel = Strcut.new(:rim, :tire) do
    def diameter(wheel)
      rim + ( tire * 2 )
    end
  end
  def wheelify(data)
    data.collect { |cell| Wheel.new(cell[0], cell[1]) }
  end
end
