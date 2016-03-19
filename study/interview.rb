def fizzbuzz(num1, num2)
  (num1..num2).map do |n|
    if n%15 == 0
      "FizzBuzz"
    elsif n%5 == 0
      "Buzz"
    elsif n%3 == 0
      "Fizz"
    else
      n
    end
  end
end

p fizzbuzz(1, 15)
