def reverse_array(arr)
  rev_arr = []
  i = 0
  loop do |str|
    rev_arr[arr.size - 1 - i] = arr[i]
    i += 1
    break if i == arr.size
  end
  rev_arr
end

arr = ['one', 'two', 'three', 'four', 'five', 'six']

p reverse_array(arr)

