def reverse_string(word)
  rev_word_arr = []
  word_arr = word.split("")

  word.size.times do
    rev_word_arr << word_arr.pop
  end

  rev_word_arr.join("")
end

def is_palindrome?(str)
  reverse_string(str).downcase == str.downcase
end

p is_palindrome?("hello")
p is_palindrome?("Racecar")
