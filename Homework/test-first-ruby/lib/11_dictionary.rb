# Michael Le @ le.michael6@gmail.com
# 11_dictionary.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/11_dictionary_spec.rb
# 

class Dictionary
# attr_accessor allows to read and write to the instance var
  attr_accessor :entries 

  def initialize(entries = {})
    @entries = entries
  end

  def add(entry)
  	# if entry doesn't have a definition/ hash => nil
    if entry.is_a? String
      entry = {entry => nil}
    end
    # adds entry to hash with key and value
    entry.each do |key, value|
      @entries[key] = value
    end
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def keywords
    keys = []

    @entries.each do |key, value|
      keys << key
    end
    # returns the sorted keys alphabetically
    keys.sort
  end

  def find(prefix)
    lookup = {}
    # finds key by searching by using =~ matching reg.expr
    @entries.each do |key, value|
      if key =~ /^#{prefix}/
        lookup[key] = value
      end
    end
    lookup
  end

  #prints out words and definition with newlines in between
  def printable
    word_def = []
    
    @entries.sort.collect do |key, value|
      word_def <<  "[#{key}] \"#{value}\""
    end
    word_def.join("\n")
  end
end
