require 'yaml' # Imports YAML to the program
test_hash = {
  "Christopher Alexander"=>Time.local(1936, 10, 4),
  "Christopher Lambert"=>Time.local(1957, 3, 29),
  "Christopher Lee"=>Time.local(1922, 5, 27)
}

test_string = test_hash.to_yaml
filename = 'test.txt'
File.open filename, 'w' do |f|
  f.write test_string
end
read_string = File.read filename
read_hash = YAML::load read_string
puts(read_string == test_string)
puts(read_hash == test_hash)

# Ignore this Ruby program
