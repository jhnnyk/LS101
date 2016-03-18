def fibonacci(size)
  fib = [0, 1]

  loop do
    fib[fib.size] = fib[fib.size - 1] + fib[fib.size - 2]
    break if fib.size == size
  end
  fib
end

def fib_elements(arr)
  fib_arr = []
  fib_nums = fibonacci(arr.size)

  arr.each_with_index do |item, index|
    fib_arr << item if fib_nums.include?(index)
  end
  
  fib_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight']

p fib_elements(arr)
