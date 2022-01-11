

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end


x = 0

while x <= 10
  if x.even?
    x += 1
    next
  end
  puts x
  x += 1           # doesn't get here without the above x+=1... infinite loop because x starts at 0 (even), and so next pushes to next iteration without executing x+= 1, so x always == 0.
end

