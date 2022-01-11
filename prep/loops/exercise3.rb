

puts "Please enter a number to start a countdown"
num = gets.chomp.to_i

def countdown(num)
 puts num
 countdown(num-1) if num > 0
end

countdown(num)
