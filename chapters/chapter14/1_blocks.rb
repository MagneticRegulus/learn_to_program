toast = Proc.new do # puts the block (like a method) into a variable
  puts 'Cheers!'
end

3.times do
  toast.call
end

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call 'chocolate'
do_you_like.call 'Ruby'

# Why? Can pass procs to methods and methods can return procs.
# Methods cannot do the same with other methods.
