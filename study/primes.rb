# Write a method that takes two numbers. It should print out
# all primes between the two numbers. Don't use Ruby's prime class.

# find_primes(3, 10) #=> 3, 5, 7
def is_prime?(num)
  (2..(num-1)).each do |divisor|
    return false if num%divisor == 0
  end

  true
end

def find_primes(num1, num2)
  (num1..num2).select { |n| is_prime?(n) }
end

p find_primes(3, 21)
