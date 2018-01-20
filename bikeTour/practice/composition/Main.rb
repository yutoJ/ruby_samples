require_relative 'Bicycle'
require_relative 'Parts'

road_bike = Bicycle.new(
  size: 'L',
  parts: RoadBikeParts.new(tape_color: 'red')
)

puts road_bike.size
puts road_bike.spares
