# Michael Le @ le.michael6@gmail.com
# 01_temperature.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
# tests can be run with the following command
#
# bundle exec rspec spec/01_temperature_spec.rb
#
def ftoc(fahrenheit)
	celsius = ((5/9.to_f) * (fahrenheit - 32)).to_i
end

def ctof(celsius)
	fahrenheit = ((9/5.to_f * celsius) + 32)
end

