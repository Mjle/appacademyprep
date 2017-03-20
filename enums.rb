nums = [1, 2, 3, 4, 5]
nums.inject(0) do |accum, element| # accum is initially set to 0, the method argument
  accum + element
end
nums.inject(:+) # A cool shortcut that does the same as the above code.

#select returns an array with all elements for which returned true
nums = (1..10)
nums.select do |i|
  i % 3 == 0
end
# => [3, 6, 9]

#any? returns true if any member of the collection returns true
nums = [2, 3, 5, 7]

nums.any? do |i|
  i % 2 == 0
end
# => true

integers = [1,2,3]

arr_ret = integers.map {|i| i*2}
puts arr_ret.join(", ").to_s


