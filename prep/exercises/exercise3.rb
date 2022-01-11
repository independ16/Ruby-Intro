arr = [1,2,3,4,5,6,7,8,9,10]

new_arr = []
arr.each { |x| new_arr.push(x) if x.odd? }

p new_arr

new_arr = arr.select { |x| x.odd? }

p new_arr