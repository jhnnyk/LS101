def fibonacci_numbers(n)
  fib = [0, 1]

  loop do
    fib[fib.size] = fib[fib.size - 1] + fib[fib.size - 2]
    break if fib.size == n
  end

  fib
end

def has_fib_index(arr)
  fib_arr = []

  arr.each_with_index do |item, index|
    if fibonacci_numbers(arr.size).include?(index)
      fib_arr << item
    end
  end

  fib_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five']

p has_fib_index(arr)
