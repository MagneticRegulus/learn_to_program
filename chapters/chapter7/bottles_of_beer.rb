# Practice counting, which worked!!!
# bottles = 99
# puts bottles
# bottles = bottles - 1
# puts bottles

# And here's the song!
bottles = 99
while true
  if bottles > 0
    puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer.'
    bottles = bottles - 1
    puts 'Take one down, pass it around, ' + bottles.to_s + ' bottles of beer on the wall.'
  elsif bottles == 0
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    break
  end
end
