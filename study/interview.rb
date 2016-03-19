def reverse_arr(arr)
  rev_arr = []

  i = 0
  loop do
    rev_arr[arr.size - 1 - i] = arr[i]
    i += 1
    break if i == arr.size
  end

  rev_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six']

p reverse_arr(arr)