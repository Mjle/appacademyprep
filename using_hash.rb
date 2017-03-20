empty_hash = Hash.new
another_empty_hash = {} # shorter and preferred

capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
capitals['New York'] # => 'Albany'


capitals.each do |state, capital|
  puts "#{capital} is the capital of #{state}"
end

# => Albany is the capital of New York
#    Sacramento is the capital of California

capitals['Texas'] = 'Austin'

puts capitals
# => { 'New York' => 'Albany', 'California' => 'Sacramento', 'Texas' => 'Austin'
capitals.delete('California')

puts capitals
# => { 'New York' => 'Albany' }

test_hash = {'a' => 100, 'b' => 25}
test_hash.delete_if {|key, value| value <= 50}
puts test_hash
# => {'a'=>100}

more_capitals = { 'Texas' => 'Austin', 'Alaska' => 'Fairbanks' }
capitals.merge(more_capitals)

h1 = {:a => 'apple', :b => 'bat'}
h2 = {:b => 'bravo', :c => 'charlie'}

h1.merge(h2) # => {:a => 'apple', :b => 'bravo', :c => 'charlie'}
capitals.keys # => ['New York', 'California']
capitals.has_key?('New York') # => true
