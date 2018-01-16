require './object/User'
require './object/DVD'

User.sayHello
User.className

user = User.new("Hira", "Gana", 4)
puts user.first_name
puts user.fullname
puts user.grade

dvd = DVD.new("dvd", 1000)
puts dvd.name
