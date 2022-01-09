a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     

new_arr = []
a.each do |element|
  new_arr.push(element.split(" "))
end

p new_arr.flatten

new_arr2 = a.map { |element| element.split(" ") }

p new_arr2.flatten


