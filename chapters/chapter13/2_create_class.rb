class Die
  def roll
    1 + rand(6)
  end
end

# Make some new dice

dice = [Die.new, Die.new]

# Roll them

dice.each do |die|
  puts die.roll
end
