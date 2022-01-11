

a = [1,2,3,5]

p a.map { |num| num**2 }

p a

p a.collect { |num| num**2 }

p a

a.pop
p a
a.push(5)
p a
p a.to_s

a.delete_at(1)
p a
a.push(2)
p a
a.sort!
p a

a.delete_at(1)
a.push(2).sort!
p a

a.delete(2)
p a
a.push(2).sort!
p a


b = [1,2,3,4,5,6,7,8,7,6,5,4,3,2,1]
p b.uniq
p b


c = b.select { |element| element != 3 }
p c

b[0] = 10
p b

b.shift()
p b
b.unshift(1)
p b

p b.include?(1)


d = [1,2,[3,4,[5,6]]]
p d.flatten
p d.flatten(1)

p d.each_index { |i| puts "Index #{i} = #{d[i]}" }

p d.each_with_index { |value, i| puts "#{value} is at index #{i}" }

#p b.product(d)

p a.product(a)

next_one = b.map { |x| x**(2) }
p next_one
p b