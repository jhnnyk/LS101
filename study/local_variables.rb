# a = "hi there"
# b = a
# a = "not here"

# puts a #=> not here
# puts b #=> hi there -- because line 3 is reassignment


# a = "hi there"
# b = a
# a << ", Bob"

# puts a #=> hi there, Bob
# puts b #=> hi there, Bob -- because << is a destructive method

# def test(b)
#   b.map! { |letter| "I like the letter: #{letter}" }
# end

# a = ['a', 'b', 'c']
# p test(a)
# p a

# -----------------
# local var scope

# str1 = "hello"

# def my_method
#   puts str1
# end

# my_method # will return an error because the variable str1 
#           # has not been passed into the method as a parameter


# str2 = 'world'

# [1].each do |n|   # this does work, because blocks only form an inner scope
#   puts str2       # and they still have access to variables in the outer scope
# end

# str2 = 'world'

# [1].each do |n|
#   puts str2
#   str2 = "a new string"
# end

# puts str2     # this will print out 'a new string' because within a block
#               # you can reassign and modify outer scope variables

# def str2
#   "from method"
# end

# [1].each do |n|
#   puts str2
#   str2 = "a new string"
# end

# puts str2


# ---------------
# method args

# def run(str)
#   str += ' world'
#   str << ' world'
# end

# a = "hello"
# run(a)

# puts a