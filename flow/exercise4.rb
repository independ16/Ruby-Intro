# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")

=begin
The above code will put "FALSE" to the screen, as '4' != 4, so the 
conditional will return the false option
=end

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

=begin
The above code will put "Did you get it right" to the screen, 
as (x * 3) / 2 evaluates to 3, and (4 + 4 - x - 3) also evaluates to 3.  since
both are 3, then 3==3 will evaluate to true.
conditional will return the false option
=end

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

=begin
The above code will put "Alright now!" to the screen, 
as the first comparison evaluates to false, the second to true, and the rest 
is't evaluated since the true branch has already been found.
=end
