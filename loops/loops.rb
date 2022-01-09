
def doubler(start)
  puts start
  if start < 10
    doubler(start *2)
  end
end

puts doubler(1)


x = ""
while x != "STOP" 
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
