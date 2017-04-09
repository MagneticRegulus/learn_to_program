# Go to working directory
Dir.chdir 'C:/Sites/workspace/learn_to_prog/chapters/chapter11/output_gifs'
# Find files
pic_names = Dir['C:/Sites/workspace/learn_to_prog/chapters/chapter11/test_gifs/*.gif']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: " # Counter
pic_number = 1
pic_names.each do |name|
  print '.' # Progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.gif"
  else
    "#{batch_name}#{pic_number}.gif"
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end

puts
puts 'Done!'

# Definitely worked! I will remove the files from the testing folders, though.
