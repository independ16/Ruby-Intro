a = [1,2,3]

def mutate(array)
  array.pop
end

puts a
p a        #cool!  Shows me the output in the form I conceptualize it, e.g. with brackets, quotes, etc.
print a


p "before mutate method: #{a}"
output = mutate(a)
p output
#p mutate(a)
p "After mutate method: #{a}"



