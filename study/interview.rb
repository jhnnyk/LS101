def is_prime?(num)
  (2..(num - 1)).each do |divisor|
    return false if num % divisor == 0
  end

  true
end

p is_prime?(8)
