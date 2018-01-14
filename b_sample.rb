require 'date'
puts Date.today

a = []
a << 1
a.push(2)
a << 3
puts a.to_s

sum = 0
a.each do |n| sum += n end
puts sum

b = [1,2,3,3,2,1]

b.delete_if do |n| n.odd? end
puts b.to_s

c = sum.odd? ? "odd" : "even"
puts c

a_double = a.map { |n| n * 2 }
puts a_double.to_s

a_even = a.select { |n| n.even? }
puts a_even.to_s

range = 1..5
puts range.include?(5)

puts (2..5).to_a.to_s

result = a.inject('#') do |cap, n| cap + n.to_s end
puts result

b.concat(a)
puts (b + a).to_s

def greeting(*names)
  "greeting #{names.join(' and')}"
end
puts greeting("James", "Meg")
