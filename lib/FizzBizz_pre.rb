def divisibleBy3?(divided_num)
  divided_num % 3 == 0
end

def divisibleBy5?(divided_num)
  divided_num % 5 == 0
end

def notDivisibleBy3or5?(divided_num)
  !divisibleBy3?(divided_num) && !divisibleBy5?(divided_num)
end

def fizz_bizz(num)
  print "Fizz" if divisibleBy3?(num)
  print "Bizz" if divisibleBy5?(num)
  print num.to_s if notDivisibleBy3or5?(num)
end
# main prcess
loop_num = 16
for loop_count in 1..loop_num do
  fizz_bizz(loop_count)
  puts
end
