# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
  hours = 0
  sminutes = minutes
  
  #converts minutes to hours & minutes
  if minutes > 60 
    hours = minutes / 60 
    sminutes = minutes % 60
  end
  
  #proper print if else
  if (sminutes < 10)
    sminutes = ":0" + sminutes.to_s
  else 
    sminutes = ":" + sminutes.to_s
  end
  
  #print time
  # puts(hours.to_s + sminutes.to_s)
  return (hours.to_s + sminutes.to_s)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #time_conversion")
puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")
