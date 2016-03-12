# def amethod(param)
#   param += " universe"  # the '+' method returns a NEW object!
#   param + " universe"
#   param << " world"
# end

# str = "hello"
# amethod(str)

# p str

a = "hello"
b = a
# 2 variables pointing to 1 object
b << " world"
# any destructive action (like '<<') modifies the object,
# but both variables are still just pointing at that 1 (same) object
puts a
puts b

a = "hey" # now 'a' has been reassigned to a new object
b << " universe"
# so we have 2 variables & 2 objects
puts a
puts b

# --------------------

player_score = 5
computer_score = 7

def keep_score(player_score, computer_score)
  player_score += 1
  computer_score += 1
  return player_score, computer_score
end

p keep_score(player_score, computer_score)
p player_score
p computer_score

# --------------------

score = { player: 5, computer: 7 }

def another_score(score)
  score[:player] += 1
  score[:computer] += 1
  score
end

p another_score(score)
p score

# --------------------

# v0 = 0

# class SomeClass # Scope gate
#   v1 = 1
#   p local_variables

#   def some_method # Scope gate
#     v2 = 2
#     p local_variables
#   end # end of def scope gate
# end # end of class scope gate

# some_class = SomeClass.new
# some_class.some_method

# p local_variables
