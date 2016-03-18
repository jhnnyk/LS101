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
