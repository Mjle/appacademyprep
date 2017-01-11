# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.

def is_power_of_two?(num)
  
  # cannot have 2^x where x cannot be negative, fractions or 0
  if num < 1
    return false
  end
  
  # num % 2 means that the number is divisible by 2, continue to divide it
  # 2^0 = 1; furthermore, we know that 2/2 = 1. 
  # any other number dividing by 2 cannot get 1.
  # this eliminates cases where (x / 2) = odd number
  # example: 30/2 = 15, 14/2 = 7, which all goes into return false
  # else, in the next while loop
  while true
    if num % 2 == 0
      num = num / 2 
    elsif num == 1 
      return true
    else
      return false
    end
  end
  
   return false
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("Enter your number to test(or press return to see results): ")
test_num = gets.chomp
puts("Result: " + is_power_of_two?(test_num.to_i).to_s)

puts("\nTests for #is_power_of_two?")
puts("===============================================")
    puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
    puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
    puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
    puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
    puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)
puts("===============================================")
