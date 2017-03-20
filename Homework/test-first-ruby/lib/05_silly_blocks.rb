# Michael Le @ le.michael6@gmail.com
# 05_silly_blocks.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/05_silly_blocks_spec.rb
# 

# splits the words, then reverse them, then rejoins them.
def reverser 
	yield.split(" ").map { |block| block.reverse! }.join(" ")
end

# takes the (x) then adds to {block}
def adder(x = 1)
	yield + x
end

# repeats (x) of {block}
def repeater(x=1)
  x.times { 
  	yield 
  }
end