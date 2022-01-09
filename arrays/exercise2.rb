=begin
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)
   
   

The above code: #1 [[b,1],[b,2],[b,3],[a,1],[a,2],[a,3]] then filter to [b,1] , and delete the 1 which is returned
#2    yields [["b", [1, 2, 3]], ["a", [1, 2, 3]]]  then [["b", [1, 2, 3]], and removes [1,2,3] which is returned
=end


arr = ["b", "a"]
#p arr = arr.product(Array(1..3))
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
p arr