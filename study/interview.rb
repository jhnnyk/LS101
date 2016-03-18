def fizzbuzz(num1, num2)
  fb_arr = []

  (num1..num2).each do |num|
    if num%15 == 0
      fb_arr << "FizzBuzz"
    elsif num%5 == 0
      fb_arr << "Buzz"
    elsif num%3 == 0
      fb_arr << "Fizz"
    else
      fb_arr << num
    end
  end

  fb_arr
end

p fizzbuzz(1, 15)
