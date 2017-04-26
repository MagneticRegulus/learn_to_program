class OrangeTree
  def initialize
    @height = 2.0 #in ft
    @fruit = 0 #oranges
    @age = 0 #born a baby!
    puts 'You planted an orange tree!'
    height
    count_the_oranges
  end
  def height
    puts "The tree is #{@height.to_i} feet tall!"
  end
  def one_year_passes
    puts 'Another year passes...'
    @age = @age + 1
    @height = @height + 0.5
    @fruit = 0
    if @age >= 20
      puts '...and the tree produces no more fruit.'
      exit
    else
      puts '...and the harvest is in!'
      height
      if @age <= 4
        puts 'But the orange tree is still too young for fruit. Maybe next year.'
      else
        @fruit = (@age * 1.5).to_i
        count_the_oranges
      end
    end
  end
  def count_the_oranges
    if @fruit == 1
      puts "There is currently #{@fruit} orange on the tree."
    elsif @age <= 4
      puts 'The tree has not produced any oranges yet.'
    else
      puts "There are currently #{@fruit} oranges on the tree."
    end
  end
  def pick_an_orange
    puts 'You pick an orange...'
    if @fruit > 0
      @fruit = @fruit - 1
      puts '...and you eat it!'
      puts "This orange is a #{rand(11)}/10!"
      count_the_oranges
    elsif @age < 5
      puts '...but this tree still has not produced fruit!'
    else
      puts '...but there are none left!'
      puts 'You must wait until next year.'
    end
  end
end

tree = OrangeTree.new
tree.pick_an_orange
puts
tree.one_year_passes
tree.pick_an_orange
puts
tree.one_year_passes
tree.pick_an_orange
puts
tree.one_year_passes
tree.pick_an_orange
puts
tree.one_year_passes
tree.pick_an_orange
puts
tree.one_year_passes
8.times do
  tree.pick_an_orange
  puts
end
15.times do
  tree.one_year_passes
  puts
end
