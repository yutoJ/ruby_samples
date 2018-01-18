def say
  puts 'hi'
  puts 'yahho'

  if block_given?
    yield
  end
end

say do
  puts 'yes'
end

puts "----"
say

def say_ho
  puts 'ho'
  puts 'yeah'

  if block_given?
    puts yield 'uh'
  end
end

say_ho do |text|
  text * 2
end

def say_ya(&block)
  puts block.call('hoihoi')
end

say_ya do |text|
  text * 2
end
