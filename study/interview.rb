def reverse_array(arr)
  rev_arr = []

  i = 0
  arr.size.times do
    rev_arr << arr[arr.size - 1 - i]
    i += 1
  end

  rev_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five']

p reverse_array(arr)
