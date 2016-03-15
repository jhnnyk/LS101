def fibonacci(index)
  fib = [0, 1]
  loop do
    fib[fib.size] = fib[fib.size - 1] + fib[fib.size - 2]
    break if fib.size == index
  end
  fib
end

p fibonacci(12)
