# player_score = 0
# computer_score = 0

def keep_score(player_score, computer_score)
  player_score += 1
  computer_score += 1
  puts "Player score id (inside the method): #{player_score.object_id}"
  puts "Computer score id (inside the method): #{computer_score.object_id}"
  return player_score, computer_score
end

# puts "Player score is: #{player_score}"
# puts "Player score id (outside the method): #{player_score.object_id}"
# puts "Computer score is: #{computer_score}"
# puts "Computer score id (outside the method): #{computer_score.object_id}"

p keep_score(5, 10)