# Michael Le @ le.michael6@gmail.com
# 09_timer.rb 
# use respective spec.rb to see success/ failures in code
# can be found in /spec/
#
# bundle exec rspec spec/09_timer_spec.rb
# 

class Timer

  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string

    hours   = (@seconds / 3600)
    minutes = (@seconds % 3600) / 60
    seconds = (@seconds % 60)

    [padded(hours), padded(minutes), padded(seconds)].join(":")
  end

#Helper method:
def padded(number)
		number < 10 ? "0#{number}": "#{number}"
	end
	
end
