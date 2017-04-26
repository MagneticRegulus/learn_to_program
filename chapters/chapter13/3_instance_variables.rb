# Instace variables have the @ in front of them
# This is kind of what I have been missing. It's been very frustrating!

class Die
  def initialize
    roll # Rolling the die to begin with, though could set it to a side.
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

die = Die.new
die.roll
puts die.showing
puts die.showing # Shows that the die has not been rerolled.
puts
die.roll
puts die.showing
puts die.showing
puts
puts Die.new.showing
