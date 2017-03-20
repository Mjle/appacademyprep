# Michael Le @ le.michael6@gmail.com
# 07_hello_friend.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/07_hello_friend_spec.rb
# 
class Friend
	# who = nil, if no one is being greeted
   def greeting(who = nil)
   if who == nil
     return "Hello!"
   else
     return "Hello, #{who}!"
   end
end
end
