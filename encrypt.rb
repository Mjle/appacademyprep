# Michael Le @ le.michael6@gmail.com 
def encrypt(str)
  letters = str.split("")
  encrypted = []
  idx = 0
  #iterate through each character
  while idx < str.length
  #standard counting loop for each character
    counter = 0
      while str[idx] == str[counter+1]
        counter += 1
        puts ("Counter is: " + counter.to_s)
      end
  #append
  #encrypted  << [str[idx],counter]
    idx +=1
  end
  return encrypted
end

puts ("Type something to see if it is in order or press RETURN to continue: ")
word = gets.chomp
puts ("Input's result: " + encrypt(word).to_s)

