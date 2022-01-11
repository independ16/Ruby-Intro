

numbers = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]

numbers.each.with_index { |value, index| p "#{index}: #{value}" }
puts
numbers.each_with_index { |value, index| p "#{index}: #{value}" }
