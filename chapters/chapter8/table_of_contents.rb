title = 'Table of Contents'

table = [['Chapter 1: Getting Started', 'page 1'],
         ['Chapter 2: Numbers', 'page 9'],
         ['Chapter 3: Letters', 'page 13']]

line_width = 75
puts(title.center(line_width))
puts
table.each do |line|
  puts(line.first.ljust(line_width/2) + line.last.rjust(line_width/2))
end

# One day, self, when you look back at this little excercise, I just want you to remember...
# You did this, in one try. You looked up a bunch of stuff first, but you did it ONCE.
# Also you had no idea if the 'first' and 'last' method would work correctly w/
# the 2D array; you just GUESSED. And it WORKED.

# Seriously, you are a bit to excited right now. You just had a bunch of ice cream,
# so you can't even celebrate by having more ice cream. Stop typing.
