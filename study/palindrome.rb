def reverse_word(str)
  word_arr = str.split("")
  rev_word_arr = []

  str.size.times do
    rev_word_arr << word_arr.pop
  end

  rev_word = rev_word_arr.join("")
end

def is_palindrome?(word)
  reverse_word(word).downcase == word.downcase
end

p is_palindrome?("hello")    #=> false
p is_palindrome?("racecar")  #=> true
p is_palindrome?("Hannah")   #=> true
