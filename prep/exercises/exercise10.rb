# yes, both array values in a hash, or an array of hashes, are possible.

hash_of_array = {
  ints: [1,2,3,4,5],
  flts: [1.0,2.0,3.0,4.0,5.0]
}

array_of_hash = [{firstname: "David", lastname: "Newton"}, {city: "Cave Creek", state: "Arizona"}]

p hash_of_array
p array_of_hash
