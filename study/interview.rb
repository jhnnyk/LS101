def balancer(str)
  return false unless str.count("(") == str.count(")")

  paren_count = 0
  str_arr = str.split("")
  str_arr.each do |letter|
    paren_count += 1 if letter == "("
    paren_count -= 1 if letter == ")"
    return false if paren_count < 0
  end

  true
end

p balancer("hi")    # => true
p balancer("(hi")   # => false
p balancer("(hi)")  # => true
p balancer(")hi(")  # => false
