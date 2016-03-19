def fibonacci_numbers(arr_size)
  fib_nums = [0, 1]

  loop do
    fib_nums[fib_nums.size] = fib_nums[fib_nums.size - 1] + fib_nums[fib_nums.size - 2]
    break if fib_nums.size == arr_size
  end

  fib_nums
end

def select_if_fib_index(arr)
  fib_index = fibonacci_numbers(arr.size)
  fib_arr = []

  arr.each_with_index do |item, index|
    fib_arr << item if fib_index.include?(index)
  end

  fib_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight']

p select_if_fib_index(arr)

