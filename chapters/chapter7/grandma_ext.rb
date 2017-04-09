# Extended Grandma Challenge - you must yell 'BYE' three times in a row to leave
bye = 0
while true
  sonny = gets.chomp
  if sonny == sonny.upcase && sonny != 'BYE'
    bye = 0
    puts 'NO, NOT SINCE ' + (rand(40) + 1929).to_s + '!'
  elsif sonny == 'BYE'
    bye = bye + 1
    if bye == 3
      break
    end
  else
    bye = 0
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end
