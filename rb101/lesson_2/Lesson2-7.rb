require "pry"

=begin
a method that returns the sum of two integers
Inputs
two integers


Outputs
an integer with sum of the two inputs


Rules
???


Examples / Test Cases
input = 1,2; output = 3
input = 0,-1; output = -1


Data structures
integer input, integer output


Algorithm
given two discrete integer

add the 2nd integer to the first

let  the addition statement be last so the result is returned
-------------
START

READ integer1
READ integer2
sum  integer1, integer2
END

Code
=end

def sum(integer1,integer2)
  integer1.to_i + integer2.to_i
end

puts sum(1,2)

=begin
a method that takes an array of strings, and returns a string that is all those strings concatenated together
Inputs
array of strings


Outputs
string, contains concatenation of the input array


Rules
???


Examples / Test Cases
input = ["to", "be", "or", "not", "to", "be"]; "to be or not to be"
input = ["a", "fit", "of", "jealous", "rage"]; "a fit of jealous rage"


Data structures
integer array, string output


Algorithm
given an array of strings

set new_string = ""

interate through the array
  - push each string into new_string

return new_string

-------------
START

READ array_of_strings

SET new-string to nil

for each string in the array
  shovel the string into array_of_strings

return array_of_strings

END

Code
=end

def array_to_string(array_of_strings)
  new_string = String.new
  array_of_strings.join(" ")
  #return new_string
end

print array_to_string(["to", "be", "or", "not", "to", "be"])

=begin
a method that takes an array of integers, and returns a new array with every
other element from the original array, starting with the first element.

Inputs
Array of integers


Outputs
an array of integers


Rules
output array contains all the values from original array with odd index values


Examples / Test Cases
input = [1,2,3,4,5] : output = [1,3,5]
input = [1,2,3,4,5,6,7,8,9,0]; output = [1,3,5,7,9]


Data structures
array input, array output


Algorithm
given an array of integers

initialize a new empty receiving array

iterate through the original array
  - if index of the current integer is odd
    - push the value at the index into the new array

return the new array

-------------
START

READ array_of_integers
SET alternating_integers

iterate through array_of_integers
  IF index is odd
    push value to alternating_integers

return alternating_integers

END


Code
=end

def every_other(array_of_integers)

  alternating_integers = Array.new

  array_of_integers.each_index do |idx|
    if idx.even?
      alternating_integers << array_of_integers[idx]
    end
  end

  return alternating_integers
end

puts
p every_other([1,4,7,2,5])
puts

=begin
a method that determines the index of the 3rd occurrence of a given character
in a string. For instance, if the given character is 'x' and the string is
'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the
given character does not occur at least 3 times, return nil.

Inputs
string


Outputs
an integer


Rules
output integer is the index of the 3rd instance of the first character having 3 instances


Examples / Test Cases
input = "axbxcdxex" : output = 6
input = "a man, a plan, a canal, panama"; output = 8


Data structures
string input, integer output


Algorithm
given a string

initialize the index_of_third integer variable
initialize counter to 0

iterate through the string
  -if the character isn't one that occurs 3 times
    iterate counter
    go to next
  -if this is the 3rd occurance of this character
    return the index

since no three x characters were found, tell the user

-------------
START

READ string
SET counter

iterate through string
  IF character isn't count 3 times
    iterate counter
    next
  otherwise if occurance of the character == 3
    return counter

Print "no 3 chars included"

END


Code
=end

def find_index_of_third(string)

  counter = 0

  while counter < string.length
    current_char = string[counter]

    if string.count(current_char) < 3
      counter += 1
      next
    elsif string[0..counter].count(current_char) == 3
      return counter
    end

    counter += 1
  end

  puts "No character occurred 3 times in the string"
end

puts find_index_of_third("axbxcdxex")                        # expected = 6
puts find_index_of_third("a man, a plan, a canal, panama")   # expected = 7
puts find_index_of_third("abcdefghijklmnopqrstuvwxyz")      # expected = "no char..."


=begin
a method that takes two arrays of numbers and returns the result of merging
the arrays. The elements of the first array should become the elements at the
even indexes of the returned array, while the elements of the second array
should becoome the elements at the odd indexes.

Inputs
2 arrays


Outputs
1 array


Rules
output array should have alternating values, where odd indexes contain the
values of array2, even indexes contain the values of array1

Do arrays have to be equal length?

Examples / Test Cases
input = [1,2,3,4,5], [a,b,c,d,e] : output = [1,a,2,b,3,c,4,d,5,e]


Data structures
arrays input, array output


Algorithm
given 2 arrays

initialize merged_array at empty

loop array1.length times
  if the iteration is even
    shift array1 onto merged array
  otherwise
    shift array2 onto merged array

return the nmerged array

-------------
START

READ array1
READ arrar2
SET merged_array to empty
SET iterations to length of longest array
SET counter = 0

iterate iterations times
  IF counter is even
    shift array1 to merged_array
  ELSE
    shift array2 to merged_array

return merged_array

END


Code
=end

def merge_arrays(array1, array2)

  merged_array = Array.new
  iterations = [array1.length,array2.length].sum


  iterations.times do |counter|
    if counter.even?
      merged_array.push(array1.shift)
    else
      merged_array << array2.shift
    end
  end

  return merged_array
end

a1 = [1,2,3,4,5]
a2 = ['a','b','c','d','e']
p merge_arrays(a1,a2)
p merge_arrays([1,2,3],[4,5,6])