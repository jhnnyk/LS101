def reverse_array(arr)
  reverse_arr = []

  i = 0
  loop do
    reverse_arr[i] = arr[arr.size - 1 - i]
    i += 1
    break if i == arr.size
  end

  reverse_arr
end

arr = ['one', 'two', 'three', 'four', 'five', 'six']

p arr
p reverse_array(arr)


# ------------------
def reverse_string(str)
  word_split = str.split("")
  rev_word_split = []

  str.size.times do
    rev_word_split << word_split.pop
  end
  
  rev_word = rev_word_split.join("")
end

p reverse_string("hello world")