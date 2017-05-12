# Michael Le @ le.michael6@gmail.com
# 04_pig_latin.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
# tests can be run with the following command
#
# bundle exec rspec spec/04_pig_latin_spec.rb
#
def translate(words)

# %w makes an array without having to put commas and quotes
 vowels = %w[a e i o u]
# split words
 output = words.split.map do |word|
  i = 0
  # this loop finds the consonants to rip off using index
  while !vowels.include?(word[i, 1])
   if word[i, 2] == "qu"
    i += 2
   else
    i += 1
   end
  end
  # word[i..-1] prints the rest of the word
  word[i..-1] + word[0, i] + "ay"
 end
 #puts output.join(" ")
 output.join(" ")

end


# def latinize(word)
#   vowels = "aeiou"
#   until vowels.include?(word[0].downcase)
#     word = word[1..-1] + word[0]
#   end
#   word + "ay"
# end

# def pig_latin(sentence)
#   words = sentence.split
#   words.map! { |word| latinize(word) }
#   words.join(" ")
# end