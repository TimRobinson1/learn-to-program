# Suggested program example from Chapter 12.

class OrangeTree

  def initialize
    @age = 0
    @height = 1
    @growing_fruit = false
    @alive = true
    @fruit = 0
  end

  def time_passes
    @age += 1
    @height += 0.5
    print "A year passes... "
    if @fruit > 0
      puts "last year's #{@fruit} oranges have fallen off..."
    end
    if @age == 10
      puts "The tree has grown old.  It has withered and died."
      exit(0)
    elsif @age > 3
      puts "the tree has grown fresh fruit!"
      @growing_fruit = true
      @fruit = (1 + rand(9))
    else
      puts "no fruit this year."
    end
  end

  def height
    puts "The tree is #{@height}m tall."
  end

  def age
    if @age == 1
      puts "The tree is #{@age} year old."
    else
      puts "The tree is #{@age} years old."
    end
  end

  def pick
    if @growing_fruit && (@fruit != 0)
      puts "You plucked a delicious fruit!"
      @fruit -= 1
    else
      puts "There's no fruit on the tree to pick."
    end
  end

  def count
    if @growing_fruit && (@fruit != 0)
      if @fruit == 1
        puts "There's only one orange on the tree."
      else
        puts "There are #{@fruit} fresh oranges on the tree!"
      end
    else
      puts "There's no fruit on the tree."
    end
  end

end

tree = OrangeTree.new

loop do
  puts "What would you like to do with the orange tree?"
  puts "1) Wait a year"
  puts "2) Check height"
  puts "3) Check age"
  puts "4) Pick fruit"
  puts "5) Count fruit"

  input = gets.chomp
  if input == "1"
    tree.time_passes
  elsif input == "2"
    tree.height
  elsif input == "3"
    tree.age
  elsif input == "4"
    tree.pick
  elsif input == "5"
    tree.count
  else
    puts "That's not an option.  Please pick a number."
  end
end
