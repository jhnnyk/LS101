def is_prime?(num)
  (2..(num - 1)).each do |divisor|
    return false if num % divisor == 0
  end

  true
end

def find_primes(num1, num2)
  (num1..num2).select do |number|
    number if is_prime?(number)
  end
end

p find_primes(3, 10)
