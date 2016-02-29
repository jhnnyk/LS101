# ---------------
# Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

p numbers

# ---------------
# Question 2
# Usually ! is used if a method is destructive and/or modifies the caller. 
# ? is usually used if the method returns true or false. But they're really just part of the method name
# so it's really just a naming convention.
#1 != is a comparison operator that means "not equal to". It should be used when comparing two objects.
#2 
!true == false # => true
#3
words = %w(jim john socks john jim)
words.uniq!
p words
#4 true ? true : false
#5 words.empty?
#6 !!user_name


# ---------------
# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice


# ---------------
# Question 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
p numbers

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
p numbers


# ---------------
# Question 5
(10..100).include?(42)


# ---------------
# Question 6
famous_words = "seven years ago..."
famous_words = "Four score and " + famous_words
puts famous_words

famous_words = "seven years ago..."
famous_words.prepend("Four score and ")
puts famous_words


# ---------------
# Question 7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
p eval(how_deep)


# ---------------
# Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
p flintstones

flintstones.flatten!
p flintstones


# ---------------
# Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
barney_array = flintstones.assoc("Barney")
p barney_array


# ---------------
# Question 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
p flintstones_hash
