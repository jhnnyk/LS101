# Question 1
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

male_total_age = 0
munsters.each do |name, details|
  if details["gender"] == "male"
    male_total_age += details["age"]
  end
end
p male_total_age


# -----------------
# Question 2
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each { |name, details| puts "#{name} is a #{details['age']} year old #{details['gender']}." }


# -----------------
# Question 3
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now #{my_string}"
puts "My array looks like this now #{my_array}"

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now #{my_string}"
puts "My array looks like this now #{my_array}"


# -----------------
# Question 4
sentence = "Humpty Dumpty sat on a wall."
p sentence.split.reverse.join(' ')

words = sentence.split(/\W/)
words.reverse!
backwards_sentence = words.join(' ') + '.'
p backwards_sentence


# -----------------
# Question 5
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8


# -----------------
# Question 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

p mess_with_demographics(munsters)
p munsters

# Why? Remember that in Ruby, what gets passed in the parameter list is not what it appears. Under
# the hood, ruby passes the object id of each item rather than the value of the parameter. The
# method internally stores these object id's in locally scoped (private to the method) variables
# (named per the method definition's parameter list).

# So Spot's demo_hash starts off pointing to the munsters hash. His program could wind up replacing
# that with some other object id and then the family's data would be safe.

# In this case, the program does not reassign demo_hash -- it just uses it as-is. So the actual hash
# object that is being messed with inside of the method IS the munsters hash.


# -----------------
# Question 7
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")


# -----------------
# Question 8
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)
