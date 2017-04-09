$rome = [
  ['M', 1000],
  ['D', 500],
  ['C', 100],
  ['L', 50],
  ['X', 10],
  ['V', 5],
  ['I', 1]
]

def old_roman ask
  while true
    puts ask
    number = gets.chomp.to_i
    numeral = ''
    puts
    if number > 0 && number < 5000
       $rome.each do |match|
         ltr = match[0]
         val = match[1]
         if number/val > 0
          numeral = numeral + ltr*(number/val)
         end
         number = number%val
       end
       puts 'Your old Roman numeral is:'
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

old_roman 'Give me an integer less than 5000, please.'

# I don't think this looks very nice, but it works perfectly!

# Looks better after Googling global variables.
