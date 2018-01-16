class Ticket

  attr_reader :fare, :from

  def initialize(fare)
    @fare = fare
  end

  def stamp(station_name)
    @from = station_name
  end
end
