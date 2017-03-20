# Michael Le @ le.michael6@gmail.com
# 02_calculator.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
# tests can be run with the following command
#
# bundle exec rspec spec/02_calculator_spec.rb
#
def add(first, second)
	return first + second
end

def subtract(first, second)
	return first - second
end

def sum(array)
	total = 0
	array.each do |num|
		total += num
	end
	return total
end

def multiply(array)
	total = 1
	array.each do |num|
		total *= num
	end
	puts total
	return total
end

def power(base, exp)
	return base ** exp
end

def factorial(n)
	return 1 if n == 0
	return n*factorial(n-1)
end

