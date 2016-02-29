# Question 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


# ------------
# Question 2
flintstones << "Dino"


# ------------
# Question 3
p flintstones.push("Dino").push("Hoppy")
p flintstones << ["Dino", "Hoppy"] # this adds an array within the array, but I wanted to try it anyway ;-)
p flintstones.concat(%w(Dino Hoppy))


# ------------
# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
p advice
# if you use advice.slice(0, advice.index('house')) instead, it is not destructive


# ------------
# Question 5
statement = "The Flintstones Rock!"
statement.scan('t').count


# ------------
# Question 6
title = "Flintstone Family Members"
title.center(40)

