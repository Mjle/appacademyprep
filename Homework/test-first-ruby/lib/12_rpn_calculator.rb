# Michael Le @ le.michael6@gmail.com
# 12_rpn_calculator.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/12_rpn_calculator_spec.rb
# 

class RPNCalculator

 attr_accessor :stack

 def initialize(stack = [])
 	@stack = stack
 end

 def value
 	stack[stack.length - 1]
 end

 def push(value)
 	stack << value.to_f
 end

 # Operators 
 def plus
 	stack << (pop + pop)
 end

# Subtraction requires the second pop - the first pop
 def minus
 	operand1 = pop
 	operand2 = pop
 	stack << (operand2 - operand1)
 end

 def times
 	stack << (pop * pop)
 end

# Divide requires the second pop - the first pop
 def divide
 	operand1 = pop
 	operand2 = pop
 	stack << (operand2 / operand1)
 end

# Raise an exception if the stack is empty.
def pop
 	num = stack.pop
 	if num.nil? 
  		raise "calculator is empty"
  	end
  	return num
 end

 def tokens(n)
  	token = []
  	n.split.collect do |x|
 	# if x matches, append it to the token array
  	    if x =~ /[- + \/ *]/
   		 token << :"#{x}"
   		else
   		 token << x.to_f
   		end
  	end
  #puts token
  token
 end

 def evaluate(string)
# evaluates accordingly to the tokens using cases
  tokens(string).each do |x|
  	case x
  		when :+
  			plus
  		when :-
  			minus
  		when :*
  			times
  		when :/
  			divide
  		else
  			push(x)
  	end
  end
  #puts value
 return value
 end
end 