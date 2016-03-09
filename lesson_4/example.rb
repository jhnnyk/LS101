# select returns a new array based on the block's *return value*.
# If the return value evaluates to true (truthiness),
# then the element is selected.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select do |n|
  n + 1
  puts n
end

p new_arr

# map returns a new array based on the block's *return value*.
# Each element is transformed based on the return value.

incremented = arr.map { |n| n > 1 }

p incremented
