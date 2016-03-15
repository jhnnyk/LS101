def is_palindrome?(word)
  letters = word.downcase.split("")

  i = 0
  reverse_letters = []
  loop do
    reverse_letters[i] = letters[letters.size - i - 1]
    break if i == letters.size - 1
    i += 1
  end
  reverse_word = reverse_letters.join

  reverse_word == word.downcase
end

def display_palindrome_status(str)
  if is_palindrome?(str)
    puts "#{str} is a palindrome!"
  else
    puts "#{str} is not a palindrome."
  end
end

str1 = "hello"    #=> false
str2 = "racecar"  #=> true
str3 = "Hannah"   #=> true

display_palindrome_status(str1)
display_palindrome_status(str2)
display_palindrome_status(str3)
