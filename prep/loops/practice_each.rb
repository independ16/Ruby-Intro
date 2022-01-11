

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }


movies = {
  "Star Wars": 5,
  "Star Trek": 5
}

movies.each { |key, value| puts key }

(1..10).each { |num| puts num*num }


"Hello World!".chars.each { |char| print char }
puts

x = 1

names.sort.each do |name|
  puts "#{x}, #{name}"
  x += 1
end

sentence = "A man, a plan, a canal, Panama"

sentence_array = sentence.chars.collect {|char| char}

p sentence_array

sentence_array_2 = sentence.chars.to_a
p sentence_array_2

