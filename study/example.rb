require 'pry'
# -------------------
# select returns a new array based on the block's *return value*.
# If the return value evaluates to true (truthiness),
# then the element is selected.
# -------------------

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# new_arr = arr.select do |n|
#   n + 1
#   puts n
# end

# p new_arr

# -------------------
# map returns a new array based on the block's *return value*.
# Each element is transformed based on the return value.
# -------------------

# incremented = arr.map { |n| n > 1 }

# p incremented


# -------------------
# local var scope

# str1 = 'hello'

# def my_method
#   puts str1
# end

# my_method # this will generate an error because methods generate 
#           # their own scope. All outside variables need to be passed
#           # into the method in order to be used in the method

# str2 = 'world'

# def str2
#   "from method"
# end

# [1].each do |n|  # blocks form an inner scope, so they can access 
#   puts str2      # artifacts from outside
#   str2 = "a new string"
# end

# puts str2   # this outputs "a new string" because blocks can reassign/modify
            # outter scope variables
# however if str2 had not been initialized outside the block this would fail
# local variables initialized inside blocks are not accessible outside the 
# scope of the block


# -------------------
# method args

# def run(str)
#   str << ' world'
# end


# a = 'hello'
# run(a)

# puts a


# --------------------

# 5.times do |i|
#   p i
#   break if i == 5
# end


# --------------------
# if n > 40
#   how many 4o's?
#   how much is left?
# elsif n > 20
#   add the 20 price
#   subtract off 20
#   how much is left?
# ...

def cheapest_quote(n)
  cost = {forty: 3.85, twenty: 1.93, ten: 0.97, five: 0.49, one: 0.1}
  fortys = 0
  twentys = 0
  tens = 0
  fives = 0
  ones = 0
  
  loop do
    if n >= 40
      fortys = (n / 40).to_i
      n = n - (fortys * 40)
    elsif n >= 20
      twentys = 1
      n = n - 20
    elsif n >= 10
      tens = 1
      n = n - 10
    elsif n >= 5
      fives = 1
      n = n - 5
    elsif n < 5
      ones = n
      break
    end
  end
  
  price = (cost[:forty] * fortys) + (cost[:twenty] * twentys) +
          (cost[:ten] * tens) + (cost[:five] * fives) + (cost[:one] * ones)
end

p cheapest_quote(80)



