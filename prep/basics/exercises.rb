require 'bigdecimal'
=begin
I put the exercises from the basic chapter in one file as I was using the problems to test combinations between the variables, methods, etc. 
I wanted to be able to play and explore the outcomes along the way... I will separate the output in the following chapters, and be more complete
in my answers, not interspersing the experimentation.  Some of these are just super simple, but fun!
=end

puts "this is to test string interpolation"

age = 45

puts "age is #{age}, don't you know"  # interprets the string literal, and doesn't need an escape
puts 'age is #{age}, don\'t you know' # doesn't interpret the string literal because using single quotes, but does interpret the escape
puts "you will be #{age + 10}"

home = nil

puts age.nil?    # = false
#puts name.nil?  # will error, as name is undefined?
puts home.nil?  # = true

#puts age; puts name; puts home

puts

puts age.divmod(5).to_s # nice to see in string to see the square brackets and confirm that I got an array as expected
puts age.divmod(5).to_s.to_i.to_f  #playing with the conversion to integer, float, to see the result.  Not what I expected!

puts

my_name = {first_name: 'David', last_name: 'Newton'}  # trying out alternate syntax for hash

my_name2 = {
  :first_name => 'David',
  :last_name => 'Newton'
}                            # trying out regular hash syntax, and spacing for clarity.

puts my_name.to_s          #to_s just makes it easier to visualize the output as a hash
puts my_name2.to_a.to_s # interesting that a hash can be converted to array so easily

first_name = "David"
last_name = "Newton"

puts first_name + " " + last_name
puts "#{first_name} #{last_name}"

puts

num = 1234  #can't wait for loops, this will be more fun then

puts (num / 1000)
puts (num % 1000) / 100
puts (num % 1000 % 100) / 10
puts (num % 1000 % 100 % 10)

puts

movies = {                                # trying out a more complex key as well.  Works great!
  :"2001: A Space Odyssey" => 1968,
  :"The Godfather" => 1972,
  :"Citizen Kane" => 1941,
  :"Raiders of the Lost Ark" => 1981,
  :"La Dolce Vita" => 1960,
  :"Seven Samurai" => 1954,
  :"North by Northwest" => 1959,
  :"His Girl Friday" => 1940,
  :"Vertigo" => 1958,
  :"The Searchers" => 1956
}

puts movies.to_s    #fun to display using to_s, not sure if all editors hide the brackets etc. when displayed without .to_s?
puts movies.keys  
puts movies.values   #to easy, but will do the "right" way next
puts
puts movies[:"The Godfather"]
puts movies[:"Vertigo"]            # only showing a couple of the keys... the complex keys make for a bit of a typing test and wanted to focus on the concepts.
puts movies[:"vertigo"]   # won't display anything, small v instead of capital
puts movies[:"vertigo"] == nil  #displays true, sort of like null or undefined in other languages I guess
puts

movie_years = movies.values.to_a  
puts movie_years
puts movie_years.to_s                 #love the .to_s for display

movie_years2 = [movies[:"The Godfather"], movies[:"Vertigo"]]   #again, short version re typing test
puts movie_years2
puts
puts movie_years[0]    #yes, have learned how to access elements of an array
puts movie_years[1]
puts movie_years[2]
puts movie_years[3]
puts movie_years[4]
puts
puts movie_years2.to_s
puts movie_years2[0]
puts
puts
puts
puts 5*4*3*2           #surprised there is no built in factorial method!  Did find more abstract way: (1..n).inject(:*) || 1, but will wait to be taught
puts 6*5*4*3*2
puts 7*6*5*4*3*2
puts 8*7*6*5*4*3*2
puts
puts rand(0.0..100.0)**2            # wanted to try out range, and exponent is easier than typing in same value using multiply.  I wonder what the tradeoffs are between * and **?
puts rand(-100.0..100.0)**2
puts rand()**2
puts
puts 3.1415926 * 3.1415926        #Pi squared
puts  1.0e10-7* 1.0e10-7          # an erg squared.  Wanted to try out scientific notation, but not getting results expected (s/b 1e-14).  This is where computers are challenged at Math, hoping we cover this?
puts BigDecimal('1.0e10') * BigDecimal("10.0")
puts (1.0e10+1000000 * 1.0e10+1000000)                #wanted to see if the numbers got large enough the result would display in scientific notation... looks like they do but they have to be big
puts (1.0e10+1000000 * 1.0e10+1000000).to_f  #surprising that it doesn't display in standard float
puts
puts "The error displayed is from using ')' incorrectly rather than '}' to close a block or hash, e.g."



