# This is not what was described...will come back to

def profile block_description, &block
  puts 'Profile on? [Y/N]'
  answer = gets.chomp.downcase
  if answer == 'y'
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds."
  elsif answer == 'n'
    block.call
  else
    puts 'ERROR: BAD INPUT'
    profile block_description, &block
  end
end

profile '25000 doublings' do
  number = 1
  2500.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits." # Very huge number!
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end
