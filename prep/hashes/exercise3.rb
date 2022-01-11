

person = {name: 'Bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}
contact = {name: 'Bobby', city: 'Phoenix', state: 'Arizona' }

person_info = person.merge(contact)

p person_info.keys
p person_info.values

person_info.each {|k,v| puts "#{k}: #{v}" }

person_info.each_key { |k| puts k }

person_info.each_value { |v| puts v }

person_info.each_pair { |k,v| puts "#{k} #{v}" }

puts

def print_hash(hash)
  for pair in hash do
    p pair[0]           # or p pair[1] for value, or leave off index if want pair, etc.
  end
end

print_hash(person_info)
