def add_three(number)
  return number + 3
  number + 4
end

add_three(4)
returned_value = add_three(4)
puts returned_value



def just_assignment(number)
  foo = number + 3
end


p just_assignment(2)
#p foo    will error, as foo isn't in scope at this point

add_three(5).times { puts 'this should print 8 times' }

puts add_three(add_three(5))

add_three(4).times { puts add_three(4) }

"hi there".length.to_s

def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def multiply(num1,num2)
  num1 * num2
end


p add(20,45)
p subtract(80,10)
p multiply(add(20,45),subtract(80,10))
p add(
  subtract(80,10), 
  multiply(
    subtract(20,6), 
    add(30,5)))
