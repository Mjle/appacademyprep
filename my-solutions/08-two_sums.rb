# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  i = 0 
  while i < nums.length 
    k = 0 
    while k < nums.length 
      if (nums[i] + nums[k] == 0 )
        #puts("i + k = true")
        #puts("i index value: " + i.to_s)
        #puts("k index value: " + k.to_s)
      return i, k
      else
        k+=1
      end
    end
    i+=1
  end
  
  return nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

#puts "Enter each array elements followed by a return key (type 'done' to get out)"
#input = gets.chomp
#arr = []
#while input != 'done'
#  arr << input.to_i
#  input = gets.chomp
#end

puts "Enter a list of numbers (e.g 1, 2, -1) [or press return to continue]"

list = gets   # Input something like "1 2 3 4" or "3, 5, 6, 1"

arr = list.split.map(&:to_i)

puts("result: " + two_sum(arr).to_s)

puts("\nTests for #two_sum")
puts("===============================================")
    puts(
      'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
    )
    puts(
      'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
    )
puts("===============================================")
