def reverse_string(string)
  string_arr = string.split("")
  rev_string_arr = []

  string.size.times do |letter|
    rev_string_arr << string_arr.pop
  end
  rev_string = rev_string_arr.join("")

  rev_string
end

p reverse_string("hello")
