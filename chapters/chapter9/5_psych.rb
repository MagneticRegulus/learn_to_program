
def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else return false
      end
      break
    else
      puts
      puts 'Please answer "yes" or "no".'
    end

  end
  return # This is what we return, true or false.
end

puts 'Please provide your first name:'
name = gets.chomp.downcase
puts 'Hello, ' + name.capitalize + ', and welcome to the Psych 101 survey.'
puts 'We will ask you a few questions. Please answer them truthfully.'
puts
ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?' # Save this value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
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
