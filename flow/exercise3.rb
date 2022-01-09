puts "Please enter a number betrween 0 and 100"
num = gets.chomp.to_i

case 
when num >=0 && num <51
  puts "number is between 0 and 50"
when num >50 && num <= 100
  puts "number is between 50 and 100"
when num > 100
  puts "number is over 100"
else
  puts "number is less than zero"
end

