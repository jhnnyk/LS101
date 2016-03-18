def balancer(str)
  return false unless str.count("(") == str.count(")")

  arr = str.split("")
  paren_count = 0
  arr.each do |char|
    paren_count += 1 if char == "("
    paren_count -= 1 if char == ")"
    return false if paren_count < 0
  end

  true
end

# p balancer("hi")
# p balancer("(hi")
# p balancer("(hi)")

p balancer(")hi(") #=> should return false