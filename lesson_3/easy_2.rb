# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")


# -------------
# Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sum_of_ages = 0
ages.each do | name, age |
  sum_of_ages = sum_of_ages + age
end
puts sum_of_ages

p ages.values.inject(:+)


# -------------
# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if { |name, age| age < 100 }
p ages


# -------------
# Question 4
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.capitalize
p munsters_description.swapcase
p munsters_description.downcase
p munsters_description.upcase


# -------------
# Question 5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)


# -------------
# Question 6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.values.min_by { |age| age }

p ages.values.min


# -------------
# Question 7
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.include?("Dino")

p advice.match("Dino")


# -------------
# Question 8
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index { |name| name[0, 2] == "Be" }


# -------------
# Question 9
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.map! { |name| name[0, 3] }



# -------------
# Question 9
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.map! { |name| name[0, 3] }
