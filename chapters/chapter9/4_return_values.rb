def say_moo number_of_moos
  puts 'mooooo...'*number_of_moos
  'yellow submarine'
end

x = say_moo 3
puts x.capitalize + ', dude...'
puts x + '.' # That is SO trippy

# Why does only the yellow submarine puts twice and not the puts moo?
# WELL it's because say_moo puts when setting x as the variable.
# The yellow submarine has no puts next to it in the method definition, so puts x puts YS.
