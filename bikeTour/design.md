### Domain Object
1. Customer
2. Trip
3. Route
4. Bike
5. Mechanic

### Messages and Actions
1. find suitable trip (Customer -> Trips)

```puml {.code-block}

actor User as user
participant "TripFinder" as tripFinder
participant "Trip" as trip
participant "Bike" as bike

loop until find suitable trips
  user -> tripFinder: find_suitable_trip\n(on_date, of_difficulty, need_bike)
  activate tripFinder
  tripFinder -> trip: find_suitable_trip\n(on_date, of_difficulty, need_bike)
  activate trip
  trip --> tripFinder: (suitable_trips)
  deactivate trip

  tripFinder -> bike: find_suitable_trip\n(trip_date, route_type)
  activate bike
  bike --> tripFinder: (suitable_trips)
  deactivate bike
  deactivate tripFinder
  tripFinder -> user: (suitable_trips)


end

```
2. prepare trip

```puml {.code-block}

participant "Trip" as trip
participant "Mechanic" as mechanic

loop until find suitable trips
  trip -> mechanic: prepare_trip(self)
  activate mechanic
  mechanic --> trip: bikes?
  deactivate mechanic

  trip --> mechanic
  activate mechanic
  loop each bikes
    mechanic -> mechanic: prepare_bike(bike)
  end

  mechanic --> trip
  deactivate mechanic

end

```
 - 自転車が用意できなかった時の返し方は？
 - Mechanicはtripにbikeを詰めて返すのか？
