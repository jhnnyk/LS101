def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt "Welcome to the Mortgage Calculator!"
  prompt "Please enter the loan amount:"

  loan_amt = ''
  loop do
    loan_amt = gets.chomp.to_f
    break unless loan_amt <= 0
    prompt "You must enter a positive number."
  end

  prompt "Please enter the Annual Percentage Rate (APR):"
  prompt "(Example: 5 for 5% or 6.9 for 6.9%)"
  apr = ''
  loop do
    apr = gets.chomp.to_f
    break unless apr <= 0
    prompt "You must enter a positive number."
  end

  prompt "Please enter the loan duration (in years):"
  loan_years = ''
  loop do
    loan_years = gets.chomp.to_f
    break unless loan_years <= 0
    prompt "You must enter a positive number."
  end

  mpr = apr / 12 / 100

  loan_months = loan_years * 12

  monthly_payment = loan_amt * (mpr * (1 + mpr)**loan_months) / ((1 + mpr)**loan_months - 1)
  prompt "Your monthly payment will be $#{format('%02.2f', monthly_payment)}"

  prompt "Would you like to make another calculation? (Y or N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using the Mortgage Calculator!"
prompt "Good bye!"
