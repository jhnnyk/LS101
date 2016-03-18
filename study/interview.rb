VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(arr)
  arr.map do |str|
    chars = str.split("")
    VOWELS.each do |vowel|
      chars.delete(vowel)
    end
    chars.join("")
  end
end

arr = ['green', 'yellow', 'black', 'white']

p remove_vowels(arr)
