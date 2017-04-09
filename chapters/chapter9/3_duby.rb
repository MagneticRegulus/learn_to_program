def square x
  puts (x * x)
end

puts 'x = 5 and square x; x is both the variable and the parameter'
x = 5
square x
puts 'my_number = 5 and square my_number; my_number is the parameter and points to x'
my_number = 5
square my_number
puts 'x = 10, my_number = x/2, and square my_number; x is both var and param but pass different values'
x = 10
my_number = x/2
square my_number

puts 'It\'s all the same value returned, but the local variable is overwriting the set variable.'
