require './object/User'

User.sayHello
User.className

user = User.new("Hira", "Gana", 4)
puts user.first_name
puts user.fullname
puts user.grade
