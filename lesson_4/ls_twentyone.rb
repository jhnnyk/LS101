require 'pry'

SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze
MAX_WIN = 31
DEALER_HITS_UNTIL = 27

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == "A"
             11
           elsif value.to_i == 0
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAX_WIN
  end

  sum
end

def busted?(cards)
  total(cards) > MAX_WIN
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > MAX_WIN
    :player_busted
  elsif dealer_total > MAX_WIN
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  puts "==============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "==============="

  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def keep_score(dealer_cards, player_cards, score)
  result = detect_result(dealer_cards, player_cards)
  if result == :dealer || result == :player_busted
    score[:dealer] += 1
  elsif result == :player || result == :dealer_busted
    score[:player] += 1
  end

  score
end

def play_again?
  puts "---------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  prompt "Welcome to Twenty-One!"
  prompt "First to win 5 hands, wins the game!"
  score = { player: 0, dealer: 0 }

  loop do
    # initialize vars
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    # inital deal
    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{total(player_cards)}."

    # player turn
    loop do
      player_turn = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        player_turn = gets.chomp.downcase
        break if ['h', 's'].include?(player_turn)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if player_turn == 'h'
        player_cards << deck.pop
        prompt "You chose to hit!"
        prompt "Your cards are now: #{player_cards}"
        prompt "Your total is now: #{total(player_cards)}"
      end

      break if player_turn == 's' || busted?(player_cards)
    end

    if busted?(player_cards)
      display_result(dealer_cards, player_cards)
      keep_score(dealer_cards, player_cards, score)
      prompt "Current score: Dealer: #{score[:dealer]}, Player: #{score[:player]}."
      if score[:player] >= 5 || score[:dealer] >= 5
        break
      else
        next
      end
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    # dealer turn
    prompt "Dealer turn..."

    loop do
      break if busted?(dealer_cards) || total(dealer_cards) >= DEALER_HITS_UNTIL

      prompt "Dealer hits!"
      dealer_cards << deck.pop
      prompt "Dealer's cards are now: #{dealer_cards}"
    end

    dealer_total = total(dealer_cards)
    if busted?(dealer_cards)
      prompt "Dealer total is now: #{dealer_total}"
      display_result(dealer_cards, player_cards)
      keep_score(dealer_cards, player_cards, score)
      prompt "Current score: Dealer: #{score[:dealer]}, Player: #{score[:player]}."
      if score[:player] >= 5 || score[:dealer] >= 5
        break
      else
        next
      end
    else
      prompt "Dealer stays at #{dealer_total}"
    end

    display_result(dealer_cards, player_cards)
    keep_score(dealer_cards, player_cards, score)
    prompt "Current score: Dealer: #{score[:dealer]}, Player: #{score[:player]}."

    break if score[:player] >= 5 || score[:dealer] >= 5
  end

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"
