# Question 1
if false
  greeting = "hello world"
end

greeting


# ----------------
# Question 2
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
puts greetings


# ----------------
# Question 3
# A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # => one
puts "two is: #{two}"       # => two
puts "three is: #{three}"   # => three

# B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # => one
puts "two is: #{two}"       # => two
puts "three is: #{three}"   #=> three


# C)
def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"       # => two
puts "two is: #{two}"       # => three
puts "three is: #{three}"   # => one


# ----------------
# Question 4
# require 'securerandom'  (at the top of the file)
# p SecureRandom.uuid
def create_UUID
  characters =[]
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless  index >= section.size - 1
  end

  uuid
end

p create_UUID


# ----------------
# Question 5
def dot_separated_ip_address?(input_sting)
  dot_separated_words = input_sting.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word)
  end
  
  true
end

