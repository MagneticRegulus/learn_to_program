# Asks for 2 years and lists all leap years between them, including themselves

# Leap years are divisible by 4. Years divisible by 100 are not leap years,
# however, unless they are also divisible by 400. More complex than at 1st glance.
# This was difficult to master in multiple lines as the program is quite binary -
# "Is the year a leap year or not? If yes, list it and check the next year,
# if not, check the next year."

# As a result, I wrote line 27 which reads in English: "Is the year not divisible
# by 4, AND/OR is the year divisible by 100 and also not divisble by 400?"

puts 'Give me an older year first and more recent year second'
puts 'and I will give you all the leap years between them.'
puts ''
puts 'Starting Year:'
first_year = gets.chomp
first_year = first_year.to_i
puts 'Ending Year:'
end_year = gets.chomp
end_year = end_year.to_i
puts ''
if first_year < end_year
  puts 'Leap Years:'
  puts ''
  while true
    if first_year <= end_year
      if (first_year%4 != 0) || ((first_year%100 == 0) && (first_year%400 != 0))
        first_year = first_year + 1
      else puts first_year
        first_year = first_year + 1
      end
    else break
    end
  end
else puts 'You did not follow my instructions and now you must try again.'
end
