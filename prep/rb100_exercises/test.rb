result = while true
  break if 4 < 5
end
p result

p :"David".class

puts 

def collatz(n)
  if n == 1 
    return 0
  elsif !(n.odd?)
    return 1 + collatz(n/2)
  else
    return 1 + collatz(3 * n + 1)
  end
end

p collatz(27)


p "xyz".upcase

a = %w(a b c d e)
a.insert(3,5,6,7)

a = %w(a b c d e)
a.insert(-3,5,6,7)

b = a.inspect
puts b
puts

twelve = 12
s = "there are about #{twelve} ways to solve this problem."
puts s.split.inspect
puts s.split('1').inspect
puts s.split(' ', 2).inspect
puts s.split("").inspect
puts s.split(nil)

