# Michael Le @ le.michael6@gmail.com
# 14_array_extensions.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/14_array_extensions_spec.rb
#
class Array

 def sum
  output = 0
   self.each do |n|
    output += n 
   end
   output
 end

 def square
  output = []
  self.each do |n|
   output << (n**2)
  end
   output
 end

 def square!
  self.collect! do |n|
  	(n**2)
  end
 end
end