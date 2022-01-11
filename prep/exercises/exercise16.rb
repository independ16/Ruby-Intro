contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

test_hash = {
  firstname: "David",
  lastname: "Newton"
}

test_hash.each_with_index do |(k,v), idx|
  p k
  p v
  p idx
end

contacts.each_with_index do |(name, hash), idx|
  p name
  p hash
  p idx
end

subkeys = [:email, :address, :phone]
contact_info = {}
x = 0

contact_data.each do |outer_array|
  outer_array.each do |element|
    contact_info[subkeys[outer_array.index(element)]] = element
    if contact_info.length == 3
      contacts[contacts.to_a[x][0]] = contact_info
      x += 1
      contact_info = {}
    end
  end
end

#p contacts.to_a[0][0]
#p contacts.to_a[1][0]


#x = 0
#y = 0
#loop do
#  loop do
#    contact_info[subkeys[x]] = contact_data[y][x]
#    x += 1
#  end
#end


p contacts


  




=begin
contacts["Joe Smith"] = {
  :email => contact_data[0][0], 
  :address => contact_data[0][1], 
  :phone => contact_data[0][2]
  
}

contacts["Sally Johnson"] = {
  :email => contact_data[1][0], 
  :address => contact_data[1][1], 
  :phone => contact_data[1][2]
  
}


p contacts


In exercise 11, we manually set the contacts hash values one by one. Now, 
programmatically loop or iterate over the contacts hash from exercise 11, 
and populate the associated data from the contact_data array. Hint: you will 
probably need to iterate over ([:email, :address, :phone]), and some helpful 
methods might be the Array shift and first methods.
=end