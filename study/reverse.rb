arr = ['one', 'two', 'three', 'four', 'five']

reverse_arr = []

i = 0
loop do
  reverse_arr[i] = arr[arr.size - i - 1]
  break if i == arr.size - 1
  i += 1
end

p arr
p reverse_arr