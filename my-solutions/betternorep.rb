# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

#NOTE: THIS IS APPACADEMY'S SOLN which uses each do, include which I found cool
def no_repeats(year_start, year_end)
  no_repeats = []
  (year_start..year_end).each do |yr|
    no_repeats << yr if no_repeat?(yr)
  end

  no_repeats
end

def no_repeat?(year)
  chars_seen = []
  year.to_s.each_char do |char|
    return false if chars_seen.include?(char)
    chars_seen << char
  end

  return true
end

puts("\nTests for #no_repeats")
puts("===============================================")
    puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
    puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
    puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")

