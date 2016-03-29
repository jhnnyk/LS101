require 'pry'
# Strive Matching # 2
# http://www.codewars.com/kata/56c2578be8b139bd5c001bd8/train/ruby

# def match(job, candidates)

#   candidates.select do |person|
#     # person unless person['desires_equity'] && job['equity_max'] <= 0
#     job['locations'].each do |location|
#       p location
#       p person['desired_locations']
#       p person['desired_locations'].include?(location)
#     end
#   end
# end

# candidates = [{
#   'desires_equity'=>true, 
#   'current_location'=>'New York',
#   'desired_locations'=>['San Francisco', 'Los Angeles']
# }, {
#   'desires_equity'=>false, 
#   'current_location'=>'San Francisco',
#   'desired_locations'=>['Kentucky', 'New Mexico'] 
# }]
# job1 = { 'equity_max'=>0, 'locations'=>['Los Angeles', 'New York'] }
# job2 = { 'equity_max'=>1.2, 'locations'=>['New York', 'Kentucky'] }

# p match(job1, candidates)
# p match(job2, candidates)
# p match(job1, candidates).length # => 0
# p match(job2, candidates).length # => 2


# ------------------
# Remove the time
# http://www.codewars.com/kata/56b0ff16d4aa33e5bb00008e/train
# def shorten_to_date(long_date)
#   # long_date[0..(long_date.index(",") - 1)]
#   long_date.split(",").first
# end

# p shorten_to_date("Monday February 2, 8pm") # => "Monday February 2"
# p shorten_to_date("Tuesday May 29, 8pm") # => "Tuesday May 29"
# p shorten_to_date("Wed September 1, 3am") # => "Wed September 1"
# p shorten_to_date("Friday May 2, 9am") # => "Friday May 2"
# p shorten_to_date("Tuesday January 29, 10pm") # => "Tuesday January 29"


# -------------------
# My head is at the wrong end!
# http://www.codewars.com/kata/56f699cd9400f5b7d8000b55/train/ruby
# def fix_the_meerkat(arr)
#   arr.reverse
# end

# p fix_the_meerkat(["tail", "body", "head"]) # => ["head", "body", "tail"]
# p fix_the_meerkat(["tails", "body", "heads"]) # => ["heads", "body", "tails"]
# p fix_the_meerkat(["bottom", "middle", "top"]) # => ["top", "middle", "bottom"]
# p fix_the_meerkat(["lower legs", "torso", "upper legs"]) # => ["upper legs", "torso", "lower legs"]
# p fix_the_meerkat(["ground", "rainbow", "sky"]) # => ["sky", "rainbow", "ground"]


# ---------------------
# Is this my tail?
# http://www.codewars.com/kata/56f695399400f5d9ef000af5/train/ruby
# def correct_tail(body, tail)
#   body.chars.last == tail
# end

# p correct_tail("Fox", "x") # => true
# p correct_tail("Rhino", "o") # => true
# p correct_tail("Meerkat", "t") # => true
# p correct_tail("Emu", "t") # => false
# p correct_tail("Badger", "s") # => false
# p correct_tail("Giraffe", "d") # => false


# ----------------------
# Transportation on vacation
# http://www.codewars.com/kata/568d0dd208ee69389d000016/train/ruby
# def rental_car_cost(d)
#   if d >= 7
#     (d * 40) - 50
#   elsif d >= 3
#     (d * 40) - 20
#   else
#     d * 40
#   end
# end

# p rental_car_cost(1) # => 40
# p rental_car_cost(2) # => 80
# p rental_car_cost(3) # => 100


# -----------------------
# Get the Middle Character
# http://www.codewars.com/kata/56747fd5cb988479af000028/train/ruby
# def get_middle(s)
#   if s.length.odd?
#     s[(s.length / 2).to_i]
#   else
#     s[(s.length / 2) - 1] + s[(s.length / 2)]
#   end
# end

# p get_middle("test") # => "es"
# p get_middle("testing") # => "t"
# p get_middle("middle") # => "dd"
# p get_middle("A") # => "A"
# p get_middle("of") # => "of"


# -----------------------
# Number of people in the bus
# http://www.codewars.com/kata/5648b12ce68d9daa6b000099/train/ruby
# def number(bus_stops)
#   count = 0

#   bus_stops.each do |people|
#     count = count + people[0] - people[1]
#   end

#   count
# end

# p number([[10, 0], [3, 5], [5, 8]]) # => 5
# p number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]) # => 17
# p number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]]) # => 21


# -----------------------
# Grasshopper - Debug
# http://www.codewars.com/kata/55cb854deb36f11f130000e1/train/ruby
# def weather_info(temp)
#   c = convert_to_celsius(temp)
#   if (c < 0)
#     return ("#{c} is freezing temperature")
#   else
#     return ("#{c} is above freezing temperature")
#   end
# end

# def convert_to_celsius(temperature)
#   celsius = (temperature - 32) * 5 / 9
# end

# p weather_info(50)
# p weather_info(23)


# ---------------------
# Decoding a message
# http://www.codewars.com/kata/565b9d6f8139573819000056/train/ruby
# def decipher(word)
#   alpha = ('a'..'z').to_a
#   decoded_message = []

#   word.chars.map do |letter|
#     decoded_message << alpha.reverse[alpha.index(letter)]
#   end

#   decoded_message.join
# end

# def decode(message)
#   words = message.split(" ")
#   decoded = words.map { |word| decipher(word) }.join(" ")
# end
# the above works, but not with edge cases with spaces at the front and back
# ---------
# def decode(message)
#   alpha = ('a'..'z').to_a

#   decoded = message.chars.map do |char|
#     if char == " "
#       " "
#     else
#       char = alpha.reverse[alpha.index(char)]
#     end
#   end

#   decoded.join
# end

# p decode(" ") # => " "
# p decode("svool") # => "hello"
# p decode("r slkv mlylwb wvxlwvh gsrh nvhhztv") # => "i hope nobody decodes this message"
# p decode("  r slkv mlylwb wvxlwvh gsrh nvhhztv ") # => "  i hope nobody decodes this message "


# --------------------
# Cyclops numbers
# http://www.codewars.com/kata/56b0bc0826814364a800005a/train/ruby
def cyclops?(n)
  binary = n.to_s(2)

  if binary.size.odd?
    (binary[binary.size / 2] == "0") && (binary.count("0") == 1)
  else
    return false
  end
end

p cyclops?(1) # => false
p cyclops?(5) # => true
p cyclops?(3) # => false
p cyclops?(13) # => false
p cyclops?(27) # => true
p cyclops?(2015) # => true
p cyclops?(666) # => false
p cyclops?(42) # => false


