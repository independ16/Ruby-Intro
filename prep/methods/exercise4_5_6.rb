=begin
The original code snipped below won't put anything out to the screen, as the "puts" 
statement doesn't execute because it follows the return, 
which has ended the method

once the "return" statement is removed the method will send "Yippeee!!!!" 
to the screen, however the method will now return nil.
=end



def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
#p scream()           #would give an error if included, as the return from scream is nil



=begin
exercise #6 gives the message becasue a method which was expecting 2 
arguments sent to it only received 1
=end
