def fibonacci(num)
  fib = [0, 1]

  loop do
    fib[fib.size] = fib[fib.size - 1] + fib[fib.size - 2]
    break if fib.size >= num
  end

  fib
end

def select_if_fib(arr)
  fibonacci_numbers = fibonacci(arr.size)
  fib_arr = []

  arr.each_with_index do |item, index|
    fib_arr << item if fibonacci_numbers.include?(index)
  end

  fib_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']

p select_if_fib(arr)
