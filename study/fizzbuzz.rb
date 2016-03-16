def fizzbuzz(num1, num2)
  (num1..num2).each do |n|
    if n%15 == 0
      p "FizzBuzz"
    elsif n%5 == 0
      p "Buzz"
    elsif n%3 == 0
      p "Fizz"
    else
      p n
    end
  end
end

fizzbuzz(1, 15)