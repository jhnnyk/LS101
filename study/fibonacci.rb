def fibonacci(index)
  fib = [0, 1]
  loop do
    fib[fib.size] = fib[fib.size - 1] + fib[fib.size - 2]
    break if fib.size >= index
  end
  fib
end

def select_if_fib(arr)
  new_arr = []
  fibonacci_sequence = fibonacci(arr.size)
  index_arr = arr.each_index.select { |i| fibonacci_sequence.include?(i) }
  index_arr.each do |n|
    new_arr << arr[n]
  end
  new_arr
end

arr = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']

p select_if_fib(arr)
