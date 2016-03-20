def fibonacci_numbers(arr_size)
  fib_nums = [0, 1]

  loop do
    fib_nums[fib_nums.size] = fib_nums[fib_nums.size - 1] + fib_nums[fib_nums.size - 2]
    break if fib_nums.size == arr_size
  end

  fib_nums
end

def fib_index(arr)
  new_arr = []

  arr.each_with_index do |item, index|
    new_arr << item if fibonacci_numbers(arr.size).include?(index)
  end

  new_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five']

p fib_index(arr)
