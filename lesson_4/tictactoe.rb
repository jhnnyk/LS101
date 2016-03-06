require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, delimeter=', ', word='or')
  array[-1] = "#{word} #{array.last}" if array.size > 1
  array.join(delimeter)
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "First to 5 wins!"
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick the center square
  if !square
    square = 5 if empty_squares(brd).include?(5)
  end

  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    #   if brd[line[0]] == PLAYER_MARKER &&
    #      brd[line[1]] == PLAYER_MARKER &&
    #      brd[line[2]] == PLAYER_MARKER
    #     return 'Player'
    #   elsif brd[line[0]] == COMPUTER_MARKER &&
    #         brd[line[1]] == COMPUTER_MARKER &&
    #         brd[line[2]] == COMPUTER_MARKER
    #     return 'Computer'
    #   end
    #
    # ---- or this ----
    #
    # if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
    #   return 'Player'
    # elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
    #   return 'Computer'
    # end
    #
    # ---- or this ----
    #
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def keep_score(winner, score)
  if winner == 'Player'
    score[:player] += 1
  else
    score[:computer] += 1
  end
  score
end

loop do
  score = { player: 0, computer: 0 }

  while score[:player] < 5 && score[:computer] < 5
    board = initialize_board

    loop do
      display_board(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} gets a point!"
      keep_score(detect_winner(board), score)
    else
      prompt "It's a tie!"
    end

    prompt "Player: #{score[:player]}, Computer: #{score[:computer]}"

    if score[:player] < 5 && score[:computer] < 5
      prompt "Continue? (y or n)"
      answer = gets.chomp
      break unless answer.downcase.start_with?('y')
    elsif score[:player] == 5
      prompt "Player wins!"
    else
      prompt "Computer wins :-("
    end
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
