puts 1 + 2
a = "Hello"
puts "#{a} world!\nEnjoy ruby!"

puts 1_000_000_000

b = 3
puts b **= 2
puts "#{a} " + b.to_s

c = "9"
puts 1 + c.to_i

puts 0.1 * 3
puts 0.1 * 3.0
puts 0.1r * 3r == 0.3

data = nil
puts 'data is nil' unless data

puts "line 1
line 2"

a =<<TEXT
aiueo
12345
qwerty
TEXT
puts a
