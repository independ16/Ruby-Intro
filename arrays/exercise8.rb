

arr = [1,2,3,4,5,6,7,8,9,20]

new_arr = []
arr.each { |element| new_arr.push(element * 2) }

p arr
p new_arr

other_new_arr = []

arr.each { |e| other_new_arr << e * 2 }

p arr
p other_new_arr


