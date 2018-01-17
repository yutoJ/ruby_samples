module Greeter
  def hello
  end
end

begin
  greeter = Greeter.new
rescue
  puts "ignore exception and continue"
end

puts "end."

puts "Case 2 start"

begin
  1 / 0
rescue => e
  puts e.message
  puts e.backtrace
end

puts "Case 3 start"

begin
  1 / 0
rescue ZeroDivisionError
  puts "0 divided"
rescue NoMethodError
  puts "No Method exists"
end

begin
  raise "ends forcedly"
rescue RuntimeError
  puts "caught"
end

begin
  raise ArgumentError.new("ArgumentError forcedly")
rescue ArgumentError => e
  puts e.message
end

def to_date(string)
  Date.parse(string) rescue 0
end

to_date("no date")

puts "Never ends"
