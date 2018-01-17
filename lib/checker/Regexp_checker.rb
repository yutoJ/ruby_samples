print 'Text?:'
text = gets.chomp
puts text

begin
  print 'Pattern?:'
  pattern = gets.chomp
  puts pattern
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "#{regexp} is not regexp"
  puts e.message
  puts e.backtrace
  retry
end
matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(',')}"
else
  puts "Nothing matched."
end
