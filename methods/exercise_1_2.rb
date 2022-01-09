puts "Please enter your name"
name = gets.chomp

puts "Welcome, #{name}!"


x = 2                          #evaluates to 2, returns 2 if last line in method
puts x = 2                     #evaluates to nil
p name = "Joe"                 #evaluates to "Joe", returns "Joe"
four = "four"                  #evaluates to "four", returns "four" if last line in method
print something = "nothing"    #evaluates to nil