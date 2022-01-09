def capper(string)
  string.length > 10 ? string.upcase : string
end

string2 = "hello"

puts capper(string2)
puts string2

string2 = "hello world"

puts capper(string2)
puts string2

