def reverse_word(str)
  word_arr = str.split("")
  rev_arr = []

  str.size.times do
    rev_arr << word_arr.pop
  end

  rev_word = rev_arr.join("")
end

def is_palindrome?(str)
  str == reverse_word(str)
end

p reverse_word("racecar")
p is_palindrome?("racecar")
