# Suggested program example from Chapter 12.

class OrangeTree

  def initialize
    @age = 0
    @height = 1
    @growing_fruit = false
    @fruit_collected = 0
    @alive = true
  end

  def time_passes
    @age += 1
    @height += 0.5
    puts "A year passes..."
    if @age > 3
      puts "...the tree has grown fruit!"
      @growing_fruit = true
    end
  end

  def height
    puts "The tree is #{@height}m tall."
  end

  def age
    if @age == 1
      puts "This tree is #{@age} year old."
    else
      puts "The tree is #{@age} years old."
    end
  end

  def pick
    if @growing_fruit == true
      puts "You plucked a delicious fruit!"
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

  input = gets.chomp
  if input == "1"
    tree.time_passes
  elsif input == "2"
    tree.height
  elsif input == "3"
    tree.age
  elsif input == "4"
    tree.pick
  else
    puts "That's not an option.  Please pick a number."
  end
end
