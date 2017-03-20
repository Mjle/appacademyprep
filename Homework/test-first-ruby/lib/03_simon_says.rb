# Michael Le @ le.michael6@gmail.com
# 03_simon_says.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
# tests can be run with the following command
#
# bundle exec rspec spec/03_simon_says.rb
#
def echo(phrase)
	return "#{phrase}"
end

def shout(phrase)
	return "#{phrase}".upcase
end

def repeat(phrase, x = 2)
	sentence = ""
	i = 1
	while i <= x
		if i != x
			sentence += "#{phrase} "
		else
			sentence += "#{phrase}"
		end
	i += 1
	end

	# returns the sentence with proper amount of spaces
	return sentence
end


def start_of_word(word, nums)
	letter_arr = word.split("")
	return letter_arr.first if (nums == 1 or nums == 0) # 0 would return 'nil'
	letters = ""
	i = 0
	while i < nums
		letters += letter_arr[i]
		i += 1
	end

	return letters
end

def first_word(sentence)
	word_arr = sentence.split(" ")
	return word_arr.first
end

def titleize(phrase)
    phrase.capitalize!  # little word in front
    little_words = ["an", "yet", "for", "or", "so", "and", "or", "the", "over", "to", "the", "a", "but"]
    title = phrase.split(" ").map {
    	|word| 
        if little_words.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") 
  return title  
end



