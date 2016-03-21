def fibonacci_numbers(arr_size)
  fibs = [0, 1]

  loop do
    fibs[fibs.size] = fibs[fibs.size - 1] + fibs[fibs.size - 2]
    break if fibs.size == arr_size
  end

  fibs
end

def select_if_fib(arr)
  fib_arr = []

  arr.each_with_index do |item, index|
    fib_arr << item if fibonacci_numbers(arr.size).include?(index)
  end

  fib_arr
end

arr = ['zero', 'one', 'two', 'three', 'four', 'five']

p select_if_fib(arr)
