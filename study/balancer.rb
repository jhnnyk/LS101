# Write a method that takes a string, and returns a boolean indicating whether
# this string has a balanced set of parentheses.

# balancer("hi")    #=> true
# balancer("(hi")   #=> false
# balancer("(hi)")  #=> true

# # Bonus:
# balancer(")hi(")  #=> false


# ------------
# my initial take below
# def balancer(string)
#   if string.include?("(")
#     string.include?(")")
#   else
#     true
#   end
# end

# p balancer("hi")      #=> true
# p balancer("(hi")     #=> false
# p balancer("(hi)")    #=> true


# ------------
# solution from Beginning Ruby Part 5
# def balancer(string)
#   string.count("(") == string.count(")")
# end

# p balancer("hi")      #=> true
# p balancer("(hi")     #=> false
# p balancer("(hi)")    #=> true


# ------------
# solution from Beginning Ruby Part 5
# modified for Bonus problem -- the order of parentheses must be correct
def balancer(string)
  return false unless string.count("(") == string.count(")")

  # detect that the order of parentheses is also good
  paren_count = 0
  string.split("").each do |char|
    paren_count += 1 if char == "("
    paren_count -= 1 if char == ")"

    return false if paren_count < 0
  end

  true
end

p balancer("hi")      #=> true
p balancer("(hi")     #=> false
p balancer("(hi)")    #=> true
p balancer(")hi(")    #=> false
