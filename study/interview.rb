def is_prime?(number)
  (2..(number - 1)).each do |divisor|
    return false if number%divisor == 0
  end

  true
end

def find_primes(num1, num2)
  (num1..num2).select { |n| is_prime?(n) }
end

p find_primes(3, 21)