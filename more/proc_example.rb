

talk = Proc.new do
  puts "I am talking."
end

talk.call



talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"





def take_proc(proc2)
  [1, 2, 3, 4, 5].each do |number|
    proc2.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

frank = Proc.new do |val|
  p val += 2
end

take_proc(proc)
p take_proc(frank)