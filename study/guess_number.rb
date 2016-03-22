computer_number = (1..100).to_a.sample

puts "Please guess a number between 1 & 100:"
guess = gets.chomp.to_i

loop do
  if computer_number < guess
    puts "Your guess is too high."
  elsif computer_number > guess
    puts "Your guess is too low"
  else
    puts "You guessed it!!"
    break
  end

  puts "Please guess again:"
  guess = gets.chomp.to_i
end

p computer_number
p guess
