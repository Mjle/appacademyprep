# Michael Le @ le.michael6@gmail.com
# 08_book_titles.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/08_book_titles_spec.rb
# 

class Book
  
  attr_reader :title

  def title=(some_title)

	little_words = ["in", "an", "yet", "for", "or", "so", "and", "or", "the", "over", "to", "the", "a", "but", "of"]
    
    words = some_title.downcase.split(" ")
    title_case = []
    i = 0

    while i < words.length 
      if i == 0 
        title_case << words[i].capitalize
      elsif !little_words.include?(words[i])
        title_case << words[i].capitalize
      else
        title_case << words[i]
      end
      i+=1
    end
    @title = title_case.join(" ")
  end
end
