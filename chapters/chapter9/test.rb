x = gets.chomp.to_i

puts

puts '1000'
puts x/1000
puts x%1000
x = x%1000
puts x
puts
puts '500'
puts x/500
puts x%500
x = x%500
puts x
puts
puts '100'
puts x/100
puts x%100
x = x%100
puts x
puts
puts '50'
puts x/50
puts x%50
x = x%50
puts x
puts
puts '10'
puts x/10
puts x%10
x = x%10
puts x
puts
puts '5'
puts x/5
puts x%5
x = x%5
puts x
puts
puts '1'
puts x/1
puts x%1


#if value > 0
#       m = value/1000
#       val_five_hun = value%1000
#       d = val_five_hun/500
#       val_one_hun = val_five_hun%100
#       c = val_one_hun/100
#       val_fifty = val_one_hun%50
#       l = val_fifty/50
#       val_ten = val_fifty%10
#       x = val_ten/10
#       val_five = val_ten%10
#       v = val_five/5
#       val_one = val_five%5
#       i = val_one/1
#       puts 'M'*m + 'D'*d + 'C'*c + 'L'*l + 'X'*x + 'V'*v + 'I'*i
#       break
