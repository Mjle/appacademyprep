a = Array.new  + [12345]  # Array  addition.
b = String.new + 'hello'  # String addition.
c = Time.new

puts 'a = '+a.to_s # [12345]
puts 'b = '+b.to_s # [hello]
puts 'c = '+c.to_s # [c = 2016-01-29 11:35:38 -0800]

colorArray = []  # same as Array.new
colorHash  = {}  # same as Hash.new

colorArray[0]         = 'red'
colorArray[1]         = 'green'
colorArray[2]         = 'blue'
colorHash['strings']  = 'red'
colorHash['numbers']  = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end
colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end


3.times do
  puts 'Hip-Hip-Hooray!'
end

languages = ['English', 'German', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts("i am a sentence!".split.join(", "))
ten = 5.+(5)
puts(10)
puts("Adds 5 to a number you type!")
input = gets
puts(5 + input.to_i)
cool_things = "Racecars, Lasers, Aeroplanes"
puts(cool_things)
puts("Type in your name!")
name = gets.chomp #this removes the newline
puts("Hello " + name + "!")
puts(9.0 / 2)
puts("Hello world!")
seven = "4".to_i + "3".to_i
puts(seven)
not_seven = "4" + "3"
puts(not_seven)

def first_square_numbers(number_of_squares)
  squares = []

  idx = 0
  while idx < number_of_squares
    squares.push(idx * idx)
    idx = idx + 1
  end

  return squares
end

puts("How many square numbers do you want?")
number_of_desired_squares = gets.to_i
squares = first_square_numbers(number_of_desired_squares)

idx = 0
while idx < squares.length
  puts(squares[idx])
  idx = idx + 1
end

puts("length of squares is " + squares.length.to_s)
