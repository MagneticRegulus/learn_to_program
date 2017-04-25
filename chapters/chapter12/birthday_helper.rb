# Struggling with this one. Will need to look up examples.

require 'yaml'

birthday_list = Dir['C:/Sites/workspace/learn_to_prog/chapters/chapter12/birthday_db.txt']
birthday_list = birthday_list.to_yaml
$birthdates = {}

def birthday_load filename
  birthday_string = File.read(filename)
  birthday_string.each_line do |x|
    x.chomp
    birthday_array = x.split(':')
    name = birthday_array[0]
    date = birthday_array[1]
    $birthdates[name] = date.strip # Missed this strip in the first run; was on line above
  end
end

def birthday_search person
  $age == nil
  $birthdates.each do |name, date|
    if name.downcase == person.downcase # Missed this downcase on name in first run
      cap_name = name # name is being recorded as proper nouns in hash, this assigns the key to a variable
      year = date[-4..-1].to_i
      month = date[0..2].downcase
      day = date[-8..-7].strip.to_i
      birthdate_time = Time.local(year, month, day)
      current_time = Time.new
      current_year = current_time.year
      if Time.local(current_year, month, day) < current_time
        nxt_bday_time = Time.local(current_year + 1, month, day)
      else
        nxt_bday_time = Time.local(current_year, month, day)
      end
      $age = ((((nxt_bday_time - birthdate_time)/60)/60)/24)/365
      puts "#{cap_name}'s next birthday falls on #{month.capitalize} #{day} #{nxt_bday_time.year.to_i}."
      puts "They will be #{$age.to_i} years old!"
    end
  end
  if $age == nil
    puts 'Cannot locate person\'s birthdate.'
  else
  end
end

#Initialize
birthday_load 'birthday_db.txt'
puts 'Please give me a name, and I will locate their birthday.'
person = gets.chomp
birthday_search person
