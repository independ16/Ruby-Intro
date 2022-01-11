# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

p /c/.match("powerball")

def has_a_b2?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b2?("basketball")
has_a_b2?("football")
has_a_b2?("hockey")
has_a_b2?("golf")

p Math::PI
p Math.sqrt(400)

t = Time.new(1970, 8 , 2)
p t.wday

t = Time.new

p t
p t.localtime
p t.utc
p t.localtime.zone
#p t.localtime.dst?

#t = Time.local

case t.wday
  when 0
    p "Sunday"
  when 1
    p "Monday"
  when 2
    p "Tuesday"
  when 3
    p "Wednesday"
  when 4
    p "Thursday"
  when 5
    p "Friday"
  when 6
    p "Saturday"
  else
    p "Something went wrong"
end

puts "---------------------------"
a = "hi there"
b = a
a = "not here"
p b

a = "hi there"
b = a
a << ", Bob"
p b

a = [1,2,3,4,5]
b = a
a.push(6)
p b
p a

a = "hi there"
b = a
b << ", Bob"
p a

a = [1,2,3,3]
b = a
c = a.uniq!

p a
p b
p c

def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p test(a)
p a

def try_this(&block)
  block.call
  puts "this is the method that received the block"
  block.call
end

try_this { puts "this is from the passed in block" }

talk = Proc.new do |string|
  p "#{string}"
end

talk.call("test")
