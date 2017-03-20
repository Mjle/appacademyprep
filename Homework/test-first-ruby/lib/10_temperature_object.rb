# Michael Le @ le.michael6@gmail.com
# 10_temperature_object.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/10_temperature_object_spec.rb
# 

class Temperature

  # Class methods
  def self.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def initialize(options = {})
  	 if options[:f] 
      @fahrenheit = options[:f]
      @celsius = self.class.ftoc(options[:f])
    end

    if options[:c]
      @celsius = options[:c]
      @fahrenheit = self.class.ctof(options[:c])
	end 
    #@fahrenheit = options[:f] || options[:c] * (9/5.to_f) + 32
    #@celsius = options[:c] || (options[:f] - 32) * (5/9.to_f)
  end

  # Conversion class methods 
  # ftoc and ctof required by test-driving bonus
  def self.ctof(celsius)
    celsius * (9/5.to_f) + 32
  end

  def self.ftoc(fahrenheit)
    (fahrenheit - 32) * (5/9.to_f)
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celsius
  end

end


# Create Celcius and Fahrenheit class that inherits from Temperature class
class Celsius < Temperature

  def initialize(celsius)
    super(c: celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(f: fahrenheit)
  end
end