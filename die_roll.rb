class Die
  # def initialize is always called when object is created
  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    #numberShowing is an instance variable that lives as long as the object does
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

puts Die.new.showing

#sample method selects an element at random, shuffle method the array in random order
die = [1,2,3,4,5,6]
roll1 = die.sample
roll2 = die.sample
die.shuffle

#removes dupe using uniq method
[1,2,1,3,3].uniq # => [1,2,3]

