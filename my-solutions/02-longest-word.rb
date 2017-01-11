# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  arrs = sentence.split
  # puts(arrs) outputs array #debug information
  
  i = 0
  longidx = 0
  while i < arrs.length
  # puts(arrs[longidx], arrs[i], i) #debug informatio
    if arrs[longidx].length < arrs[i].length
      longidx = i
    elsif arrs[longidx].length > arrs[i].length
      longidx = longidx
    end
  i+=1
end

  puts("Longest word is: " + arrs[longidx])
  return arrs[longidx]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_word")
# If you want to type in your own sentence uncomment
# the three below
#puts("Type in a sentence: ")
#sentence = gets
#longest_word(sentence)
puts("===============================================")
    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )
puts("===============================================")
