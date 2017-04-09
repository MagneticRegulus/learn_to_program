# Filenames do not have to end with ".txt"

filename = 'HunchbackQuote.txt'
test_string = 'Now here is a riddle to guess if you can, ' +
  'Sing the bells of Notre Dame. ' + 'What makes a monster and what makes a man?'
File.open filename, 'w' do |f| # The "w" give write access to the file
  f.write test_string
end
read_string = File.read filename
puts(read_string == test_string)
