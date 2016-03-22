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

5.times do |i|
  p i
  break if i == 5
end

