hello_proc = Proc.new do
  'Hello!'
end

puts hello_proc.call

add_proc = Proc.new { |a, b| a + b }
puts add_proc.call(2, 3)
puts add_proc.yield(10,20)
puts add_proc.(20, 20)
puts add_proc[30,20]
puts add_proc === [40,20]

add_lambda = ->(a,b) {a + b}
puts add_lambda.call(5, 6)

-> a,b {a + b}

reverse_proc = Proc.new { |s| s.reverse }
puts ['Ruby', 'Java', 'Perl'].map(&reverse_proc).join

split_proc = :split.to_proc
puts split_proc.call('a b c').join
