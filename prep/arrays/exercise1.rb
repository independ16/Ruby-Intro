

arr = [1,3,5,7,9,11]
number = 3

def number_check(array,num)
  is_present = false
  array.each do |element|
    if element == num
      is_present = true
    end
  end
  is_present
end

p number_check(arr,number)

puts arr.include?(number) ? "#{number} is included in #{arr}" : "#{number} is NOT included in #{arr}"

case arr.include?(number)
when true
  puts "#{number} is included in #{arr}"
when false
  puts "#{number} is NOT included in #{arr}"
else
  puts "Something must have gone wrong"
end

puts
puts "for loop"

found = false
for x in arr do
  if x == number
    found = true
  end
end

p found
