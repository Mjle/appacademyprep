# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
  
  reversed=""
  i = 0
  while i < string.length
    reversed = string[i] + reversed
    i+=1
  end
    return reversed
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

# Uncomment below if you want to put your own input
#puts("Please type in your string to reverse:")
#string = gets.chomp
#puts(reverse(string))
puts("\nTests for #reverse")
puts("===============================================")
    puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )
    puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )
    puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )
puts("===============================================")

