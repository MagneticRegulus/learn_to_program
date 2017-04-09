# With the random year set to span 39 years from 1929 - 1968
while true
  sonny = gets.chomp
  if sonny == 'BYE'
    break
  elsif sonny == sonny.upcase
    puts 'NO, NOT SINCE ' + (rand(40) + 1929).to_s + '!'
  else puts 'HUH?! SPEAK UP, SONNY!'
  end
end
