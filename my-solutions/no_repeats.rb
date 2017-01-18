# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats?(year)
  i = 0
  years = year.to_s
  #puts("checking for repeats: " + years.to_s)
  while i < years.length
  #puts "iterating through year characters"
    k = i + 1
    while k < years.length
    #puts("Year[i]: " + years[i].to_s + " Year[k]: " + years[k].to_s)
      if years[i] == years[k]
        #puts("returned false")
        return false
      else
        k+=1 
      end
    end
    i+=1
  end
  #puts("returning true")
  return true
end

def no_repeats(year_start, year_end)
  years = []
  while year_start <= year_end
    if no_repeats?(year_start)
     years.push(year_start)
    end
    year_start+=1
  end
  #puts("this is the years array: " + years.to_s)
  return years
end

puts("\nTests for #no_repeats")
puts("===============================================")
    puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
    puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
    puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")
