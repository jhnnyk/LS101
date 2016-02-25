1. a method that returns the sum of two integers

get first number
get second number
add the two numbers
print out the result

START

  GET number1
  GET number2

  result = number1 + number2

  PRINT result

END

----------------

2. a method that takes an array of strings, 
   and returns a string that is all those strings concatenated together

Given an array of strings
Iterate through the collection one by one.
  - save the first value as the starting value
  - for each iteration, add the new string to the starting string
After iterating through the collection, return the saved value.

START

  Given a collection of strings called "strings"

  SET iterator = 0

  WHILE iterator < length of "strings"
    big_string << string value at iterator
    iterator += 1

  PRINT big_string

END

----------------
3. a method that takes an array of integers, 
   and returns a new array with every other element

Given an array of integers
Iterate through the collection one by one.
  - add the first value to a new array
  - skip the next value
  - repeat for the entire array
Return the new array

START 

  Given an array called "numbers"

  SET iterator = 0

  WHILE iterator < length of numbers
    IF iterator%2 = 0
      add number to new_array
      iterator += 1

  PRINT new_array

END