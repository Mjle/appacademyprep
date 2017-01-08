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
