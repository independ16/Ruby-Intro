

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person.fetch(:name)
name_hash = person.select { |k,v| k == :name }
p name_hash.values.shift
p person.values_at(:name)[0]
p person[:name]



