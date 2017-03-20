#EXAMPLE OF STRING INTERPOLATION
MURDER = "redrum".reverse.upcase
puts "#{MURDER}! #{MURDER}!"

#NEVER DO THIS because it is bad to delete with loop
#Consider using delete_if
array = [0,1,2,3]
i=0
puts ('Array before deletion: ' + array.to_s)
while i < array.count
   array.delete_at(i)
   i += 1
end
puts ('is the array empty? ' + array.empty?.to_s)
puts ('Array after: ' + array.to_s)
puts ('pushing is done with << such as array << 5')
puts ('popping is done as array << array.pop + array.pop')
array << 5
array << array.pop + array.pop
puts ("Array after pushing and popping: " + array.to_s)

puts ("we can also do a queue by using array.delete_at\(0\)")
array.delete_at(0)
puts (array.to_s)

#SHIFT
puts ("shifting array removes first element, then returns it")
puts array.shift
array.unshift(10)
puts ("Array after unshift(10): " +  array.to_s)

#sample, shuffling, sorting, finding
puts ("array.include10?: " + array.include?(10).to_s)
puts ("array.index(10): " + array.index(10).to_s)
array << 12
array << 14 
array << 8
puts ("array added a few number + sort : " + array.sort.to_s)
puts ("array.shuffle: " + array.shuffle.to_s)
puts ("array.sample: " + array.sample.to_s)
puts ("array.first: " + array.first.to_s + "array.last: " + array.last.to_s)
test_hash = { 'a' => 100, 'b' => 25}
test_hash.delete_if {|key,value| value <= 50}
puts ('This is the hash now from a => 100, b => 25' + test_hash.to_s)

test_hash2 = { 'c' => 50, 'b' => 30}
puts ('test_hash2: ' + test_hash2.to_s)

test_hash3 = test_hash.merge(test_hash2)
puts ('test_hash3' + test_hash3.to_s)

puts test_hash3.values
puts test_hash3.has_key?('a')
puts test_hash3.has_value?(30)
