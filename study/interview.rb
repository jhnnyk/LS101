def is_palindrome?(word)
  word_arr = word.chars
  rev_word_arr = []

  word.size.times do
    rev_word_arr << word_arr.pop
  end

  word == rev_word_arr.join
end

p is_palindrome?("hello")
p is_palindrome?("racecar")
