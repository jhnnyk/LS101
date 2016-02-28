LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end

  x = "a random line of code"

  word # since this is the last line, this method will always return this value
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp
  break unless name.empty?
  prompt('valid_name')
end

puts "=> Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt('first_num')
    number1 = gets.chomp

    break if number?(number1)
    prompt('not_valid_num')
  end

  number2 = ''
  loop do
    prompt('second_num')
    number2 = gets.chomp

    break if number?(number2)
    prompt('not_valid_num')
  end

  prompt('operation')

  operator = ''
  loop do
    operator = gets.chomp

    break if %w(1 2 3 4).include?(operator)
    prompt('valid_operation')
  end

  puts "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts "The result is #{result}."

  puts "Do you want to perform another calculation? (Y to calculate again)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good bye.")
