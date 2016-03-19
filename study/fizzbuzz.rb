def fizzbuzz(num1, num2)
  fizzbuzz = []

  (num1..num2).each do |n|
    if n%15 == 0
      fizzbuzz << "FizzBuzz"
    elsif n%5 == 0
      fizzbuzz << "Buzz"
    elsif n%3 == 0
      fizzbuzz << "Fizz"
    else
      fizzbuzz << n
    end
  end

  fizzbuzz
end

p fizzbuzz(1, 15)