class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # Born full
    @stuff_in_intestine = 0 # Doesn't need to poo.
    puts "#{@name} is born."
  end
  def menu
    actions = {
      'feed'=>'Feed your dragon',
      'walk'=>'Take your dragon out for a walk (bring a bag)',
      'put_to_bed'=>'Tuck your dragon into bed',
      'toss'=>'Play with your dragon',
      'rock'=>'Sing your dragon a lullaby',
      'menu'=>'Display this list',
      'end'=>'Exit the program'
    }
    actions.each do |act, describe|
      puts "#{act}: #{describe}"
    end
  end
  def end
    exit
  end
  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end
  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  private
  # "private" means that the methods defined here are methods internal to the object.
  # You can feed your dragon, but you can't ask him whether he's hungry.
  def hungry? # End with a ? for true/false only methods.
    @stuff_in_belly <= 2
  end
  def poopy?
    @stuff_in_intestine >= 8
  end
  def passage_of_time
    if @stuff_in_belly > 0 # Digestion occurs.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # dragon is starving
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

actions = ['feed','walk','put_to_bed','toss','rock','menu','end']

puts 'You discover a dragon\'s egg on a mystical island.'
puts 'You put in on a fire...'
puts '...and it hatches!'
puts
puts 'What will you name your dragon?'
name = gets.chomp.downcase
pet = Dragon.new name.capitalize
puts
puts "Type 'menu' for a list of things to do."
puts
while true
  puts 'What do you do?'
  action = gets.chomp.downcase
  check = false
  puts
  actions.each do |act|
    if act == action
      meth = pet.method(act)
      meth.call()
      check = true
    end
  end
  if check == false
    puts 'Sorry, I didn\'t get that. Here\'s a list of things to do:'
    pet.menu
  end
  puts
end
