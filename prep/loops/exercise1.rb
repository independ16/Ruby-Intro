x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

p x
=begin
the each method in the above code iterates through the elements in x 1 at a time to allow the element to hav ethe a + 1 calculation performed on it.
=end

y = []
x.each do |a|
  y.push(a + 1)
end

p x
p y

