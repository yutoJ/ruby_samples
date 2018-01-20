class Trip
  attr_reader :bikes, :customers, :vehicle

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_trip(self)
    end
  end
end

class Mechanic
  def prepare_trip(trip)
    prepare_bikes(trip.bikes)

    trip.bikes.each do |bike|
      prepare_bike(bike)
    end
  end
  def prepare_bikes(bikes)
    bikes.each do |bike|
      prepare_bike(bike)
    end
  end
  def prepare_bike(bike)
    puts "clean bike"
  end
end

class TripCoordinator
  def prepare_trip(trip)
    prepare_dinner(trip.cutomers)
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end
end
