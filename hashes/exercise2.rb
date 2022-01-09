

person = {name: 'Bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}
contact = {name: 'Bobby', city: 'Phoenix', state: 'Arizona' }

person_info = person.merge(contact)

p person_info
p person
p contact
puts

person.merge!(contact)
p person
p contact


