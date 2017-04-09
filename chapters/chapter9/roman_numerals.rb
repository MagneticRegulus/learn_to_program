$rome = [
  ['M', 1000],
  ['CM', 900],
  ['D', 500],
  ['CD', 400],
  ['C', 100],
  ['XC', 90],
  ['L', 50],
  ['XL', 40],
  ['X', 10],
  ['IX', 9],
  ['V', 5],
  ['IV', 4],
  ['I', 1]
]

def roman_numeral ask
  while true
    puts ask
    number = gets.chomp.to_i
    numeral = ''
    puts
    if number > 0 && number < 4000
       $rome.each do |match|
         ltr = match[0]
         val = match[1]
         if number/val > 0
          numeral = numeral + ltr*(number/val)
         end
         number = number%val
       end
       puts 'Your Roman numeral is:'
       puts numeral
       break
    elsif number == 0
      puts 'Make sure you provide an integer. ZERO means nothing in Rome.'
      puts 'Try again.'
    else
      puts 'I can\'t help with integers over 3999, sorry.'
      puts 'Try again.'
    end
  end
end

roman_numeral 'Give me an integer less than 4000, please.'

# Pretty shocked by how easy that was to change from the original program.
