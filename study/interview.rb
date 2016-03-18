VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(str)
  word_arr = str.split("")
  VOWELS.each do |char|
    word_arr.delete(char)
  end
  no_vowels = word_arr.join("")
end

def remove_vowels_arr(arr)
  no_vowels_arr = []
  
  arr.each do |word|
    no_vowels_arr << remove_vowels(word)
  end

  no_vowels_arr
end

arr = ['green', 'yellow', 'black', 'white']

p remove_vowels_arr(arr)