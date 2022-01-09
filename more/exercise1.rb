

list = ["laboratory", "experiment", "Pans Labryinth", "elaborate", "polar bear"]
sequence = "lab"

def sequence_check(array,sequence)
  array.each do |string|
    puts "#{string} contains #{sequence}" if string.match(sequence)
  end
end

sequence_check(list,sequence)
puts

def sequence_check2(array,sequence)
  array.each do |string|
    puts "#{string} contains #{sequence}" if /#{sequence}/ =~ string
  end
end

sequence_check2(list,sequence)