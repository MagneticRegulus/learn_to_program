def english_number number
  num_string = '' # This is the string we will return
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  left = number
  write = left/1000 # How many thousands left?
  left = left - write*1000 # Subtract off those thousands
  if write > 0
    thousands = english_number write #recursion
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' ' # adds space between words
    end
  end
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds
  if write > 0
    hundreds = english_number write #recursion
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' ' # adds spaces between words
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens
  if write > 0
    if ((write == 1) and (left > 0)) # need to make a special exception for teens
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end
    if left > 0
      num_string = num_string + '-' # hyphenates
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write - 1]
  end
  num_string
end

# I have only gone up to the thousands and have capped this program to stay under 1 million
# I believe I have understood this concept and may come back to this excericise to complete
# at a later date.

puts 'How many bottles of beer are on the wall?'
puts
num = gets.chomp
if num.empty?
  puts 'PARTY POOPER'
else
  puts
  bottles = num.to_i
  while true
    if bottles >= 1000000
      puts 'That\'s...far too much beer for even a computer to drink.'
      break
    elsif bottles > 0
      puts english_number(bottles) + ' bottles of beer on the wall, ' + english_number(bottles) + ' bottles of beer.'
      bottles = bottles - 1
      puts 'Take one down, pass it around, ' + english_number(bottles) + ' bottles of beer on the wall.'
    elsif bottles == 0
      puts 'No more bottles of beer on the wall, no more bottles of beer.'
      puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
      break
    elsif bottles < 0
      puts 'You can\'t have negative beer.'
      break
    end
  end
end
