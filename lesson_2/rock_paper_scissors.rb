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
  player_score = 0
  computer_score = 0
  prompt "Welcome to Rock, Paper, Scissors, Spock, Lizard!"
  prompt "First one to 5 wins!"
  while player_score < 5 && computer_score < 5
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

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt "Player: #{player_score}, Computer: #{computer_score}"
  end

  puts "----------"
  if player_score == 5
    prompt "You win the game #{player_score}-#{computer_score}!"
  else
    prompt "The computer wins #{computer_score}-#{player_score}"
  end
  puts "----------"

  prompt "Do you want to play again? (Y or N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing! Good bye!"
