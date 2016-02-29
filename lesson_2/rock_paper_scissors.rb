VALID_CHOICES = %w(rock paper scissors spock lizard).freeze

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
    (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end

def match_abbreviation(abbr)
  case abbr
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'sp'
    'spock'
  when 'l'
    'lizard'
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    prompt "Abbreviate by using r, p, sc, sp, & l"
    user_choice = gets.chomp.downcase
    choice = match_abbreviation(user_choice)

    break if VALID_CHOICES.include?(choice)
    prompt "That's not a valid choice."
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}."

  display_results(choice, computer_choice)

  prompt "Do you want to play again? (Y or N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing! Good bye!"
