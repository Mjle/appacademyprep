# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# Difficulty: easy.

def sum_nums(num)
  
  idx = 0 
  sum = 0
  while idx <= num
    sum += idx
    idx += 1
  end
return sum
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
# Uncomment the three lines below to put your own input
#puts("Enter the number of the sum you want: ")
#input_sum = gets.chomp
#puts(sum_nums(input_sum.to_i))
puts("\nTests for #sum_nums")
puts("===============================================")
    puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
    puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
    puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
    puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
    puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)
puts("===============================================")
