VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(str)
  word_arr = str.split("")
  VOWELS.each { |v| word_arr.delete(v) }
  word_arr.join("")
end

def remove_vowels_arr(arr)
  arr.map { |str| remove_vowels(str) }
end

arr = ['green', 'yellow', 'black', 'white']

p remove_vowels_arr(arr)
