time = Time.new #This current moment in Time
time2 = time + 60 #One minute later
puts time
puts time2

puts

ytk = Time.local(2000, 1, 1) #Y2K
bday = Time.local(1976, 8, 3, 13, 31) #Author's birthday
puts ytk
puts bday
puts ((((ytk - bday)/60)/60)/24)/365

puts

puts Time.gm(1955, 11, 5) #GMT - a red letter day

puts

puts time2 - time
