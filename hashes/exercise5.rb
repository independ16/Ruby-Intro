person = {name: 'Bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}
contact = {name: 'Bobby', city: 'Phoenix', state: 'Arizona' }

person_info = person.merge(contact)

val = "Bobby"
val2 = "Bob"
p person_info.values.include?(val)
p person_info.values.include?(val2)

p person_info.value?(val)
p person_info.value?(val2)

