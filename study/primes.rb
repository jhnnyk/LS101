# Write a method that takes two numbers. It should print out
# all primes between the two numbers. Don't use Ruby's prime class.

# find_primes(3, 10) #=> 3, 5, 7
def is_prime?(num)
  (2..(num-1)).each do |divisor|
    if num%divisor == 0
      return false
    end
  end
  true
end

def find_primes(num1, num2)
  (num1..num2).select do |number|
    is_prime?(number)
  end
end

p find_primes(3, 10)
