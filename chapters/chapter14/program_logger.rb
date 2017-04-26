def log block_description, &block
  puts "Initializing #{block_description}'..."
  block.call
  puts "...'#{block_description}' complete. Returning:"
end

log 'outer block' do
  log 'random square' do
    random = rand(10) + 1
    random = random * random
    puts random
  end
  log 'success indicator' do
    puts 'Great work, self!'
  end
end
# review this one...???
# need to create the 'better' version as well
# check solutions
