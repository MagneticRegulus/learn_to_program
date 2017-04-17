letters = 'a'..'c' # Range literal
puts(['a','b','c'] == letters.to_a) # Convert range to array
('A'..'Z').each do |letter| #iterate over a range
  print letter
end
puts
god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979 ))
puts(god_bless_the_70s.include?(1980 ))
puts(god_bless_the_70s.include?(1974.5))
