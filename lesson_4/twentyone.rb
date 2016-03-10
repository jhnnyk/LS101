def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = [
    ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'],
    ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'], ['H', 'A'],
    ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'],
    ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'], ['D', 'A'],
    ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'],
    ['C', '9'], ['C', '10'], ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A'],
    ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'],
    ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A']
  ]
end

def say(card)
  case 
  when card[0] == 'H'
    card_suit = 'Hearts'
  when card[0] == 'D'
    card_suit = 'Diamonds'
  when card[0] == 'C'
    card_suit = 'Clubs'
  when card[0] == 'S'
    card_suit = 'Spades'
  end

  case 
  when card[1] == 'A'
    card_value = 'Ace'
  when card[1] == 'K'
    card_value = 'King'
  when card[1] == 'Q'
    card_value = 'Queen'
  when card[1] == 'J'
    card_value = 'Jack'
  else
    card_value = card[1]
  end

  "#{card_value} of #{card_suit}"
end

def deal_card(deck)
  card = deck.sample
  deck = deck.delete(card)
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

def find_winner(player_cards, dealer_cards)
  if busted?(dealer_cards) || total(player_cards) > total(dealer_cards)
    "Player"
  elsif total(dealer_cards) > total(player_cards)
    return "Dealer"
  else
    return "Tie"
  end
end

def display_winner(winner)
  if winner == "Player"
    "Player wins!"
  elsif winner == "Dealer"
    "Dealer wins."
  else
    "It's a tie!"
  end
end

loop do
  player_cards = []
  dealer_cards = []
  deck = initialize_deck

  prompt "Welcome to 21!"
  prompt "Dealing cards..."
  player_cards << deal_card(deck) << deal_card(deck)
  dealer_cards << deal_card(deck) << deal_card(deck)

  prompt "-------"
  prompt "You have a #{say(player_cards[0])} & a #{say(player_cards[1])}"
  prompt "for a total of #{total(player_cards)}."
  prompt "-------"
  prompt "Dealer is showing #{say(dealer_cards[0])}."
  prompt "-------"

  answer = nil
  loop do
    prompt "Do you want to hit or stay?"
    answer = gets.chomp.downcase
    if answer == 'hit'
      player_cards << deal_card(deck)
      prompt "You got a #{say(player_cards.last)}."
      prompt "Your total is now #{total(player_cards)}."
    end
    break if answer == 'stay' || busted?(player_cards)
  end

  if busted?(player_cards)
    prompt "You busted! Dealer wins."
  else
    prompt "You chose to stay!"

    loop do
      break if total(dealer_cards) >= 17
      dealer_cards << deal_card(deck)
      prompt "Dealer gets a #{say(dealer_cards.last)}"
    end

    prompt "You have #{total(player_cards)}; Dealer has #{total(dealer_cards)}."
    winner = find_winner(player_cards, dealer_cards)
    prompt "#{display_winner(winner)}"
  end

  prompt "Do you want to play again? (yes or no)"
  answer = gets.chomp.downcase
  break unless answer.start_with?("y")
end
