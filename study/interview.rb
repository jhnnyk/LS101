def reverse_array(arr)
  rev_arr = []

  i = 0
  loop do
    rev_arr[i] = arr[arr.size - 1 - i]
    i += 1
    break if i == arr.size
  end

  rev_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five']

p reverse_array(arr)