def ask_recursively question
  puts question
  reply = gets.chomp.downcase
  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please answer "yes" or "no".'
    ask_recursively question
  end
end

puts 'Please provide your first name:'
name = gets.chomp.downcase
puts 'Hello, ' + name.capitalize + ', and welcome to the Psych 101 survey.'
puts 'We will ask you a few questions. Please answer them truthfully.'
puts
ask_recursively 'Do you like eating tacos?'
ask_recursively 'Do you like eating burritos?'
wets_bed = ask_recursively 'Do you wet the bed?' # Save this value
ask_recursively 'Do you like eating chimichangas?'
ask_recursively 'Do you like eating sopapillas?'
ask_recursively 'Do you like drinking horchata?'
ask_recursively 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'This survey was actually intended to determine if you wet the bed.'
puts 'By asking you about food, we hoped you would answer truthfully.'
puts 'Thank you for taking part in our ANONYMOUS survey. Press any key to finish.'
puts
gets
puts 'SUBJECT CLAIMS...'
puts wets_bed
puts '...TO WETTING THE BED.'
puts
puts 'SUBJECT ANSWER LOGGED AGAINST NAME RECORD'
puts 'EXITING...'
