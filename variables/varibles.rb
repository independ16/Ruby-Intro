puts "Please enter your name."
name = "David" # gets.chomp


#puts name
#puts name
puts "You're name is #{name}, and I thank you for giving it to me."

a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  puts "the value of a = #{a}"
  a = 3           # is a accessible here, in an inner scope?
end

puts a

CONST_ONE = 10                  # works just like it looks
CONST_TWO = CONST_ONE           # works just like it looks
CONST_THREE = CONST_TWO         # works just like it looks

puts CONST_ONE                  # 10
puts CONST_TWO                  # 10
puts CONST_THREE                # 10

CONST_ONE = 20                  # shows a warning that the variable had already been set, but changes value to 20

puts CONST_ONE                  # 20
puts CONST_TWO                  # 10, since this variable hadn't had it's value changed
puts CONST_THREE                # 10

const1 = 10                  # works just like it looks
const2 = const1           # works just like it looks
const3 = const2         # works just like it looks

puts const1                  # 10
puts const2                  # 10
puts const3                # 10

const1 = 20                  # changes value to 20

puts const1                  # 20
puts const2                  # 10, since this variable hadn't had it's value changed
puts const3                # 10

x = 0
3.times do
  x += 1
end
puts x