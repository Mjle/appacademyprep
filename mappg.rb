#Map returns a new array
integers = [1,2,3,4]
puts integers.map! { |i| i*i }
puts integers.to_s

nato = {:a => "alpha", :b => "bravo"}
nato.map { |key, value| value.upcase }
puts ("nato.map: " + nato.to_s)
nato.map{ |key, value| value.upcase! }
puts  ("nato.map { |key, value| value.upcase! } : " + nato.to_s)
