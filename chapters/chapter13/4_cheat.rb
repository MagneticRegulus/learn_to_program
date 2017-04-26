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
  def cheat
    puts 'Change the side to:'
    num_cheat = gets.chomp.to_i
    if num_cheat > 0 && num_cheat < 7
      @number_showing = num_cheat
    else
      puts "Ladies and gentlemen, this gent tried to change the die from #{@number_showing} to #{num_cheat}!"
      num_cheat.times do
        puts 'HA'
      end
    end
  end
end

die = Die.new
puts die.showing
die.roll
puts die.showing
die.cheat
puts die.showing
