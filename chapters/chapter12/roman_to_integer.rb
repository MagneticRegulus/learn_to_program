$rome = {
  "M"=>1000,
  "CM"=>900,
  "D"=>500,
  "CD"=>400,
  "C"=>100,
  "XC"=>90,
  "L"=>50,
  "XL"=>40,
  "X"=>10,
  "IX"=>9,
  "V"=>5,
  "IV"=>4,
  "I"=>1
}

def roman_to_i ask
  while true
    puts ask
    roman = gets.chomp.upcase
    roman_index = 0
    int = 0
    numeral = ''
    puts
    roman.each_char do # iterates through each letter to see if it matches a key.
      $rome.each do |ltr, val|
        if ltr == roman[roman_index, 2]
          int = int + val
          roman_index = roman_index + 2
        elsif ltr == roman[roman_index]
          int = int + val
          roman_index = roman_index + 1
        end
      end
    end
    number = int
    if number > 0 && number < 4000 # checks to see if input was a valid roman numeral
       $rome.each do |ltr, val| #literally takes the integer and turns it back into a RM
         if number/val > 0
          numeral = numeral + ltr*(number/val)
         end
         number = number%val
       end
       if roman == numeral
         puts "#{roman} is #{int}."
         break
       else
         puts "It doesn't look like #{roman} is a valid Roman Numeral."
         puts 'Please try again.'
         puts
       end
    else
      puts "It doesn't look like #{roman} is a valid Roman Numeral."
      puts 'Please try again.'
      puts
    end
  end
end

roman_to_i 'Please give me a Roman Numeral, and I will translate it into a number.'
