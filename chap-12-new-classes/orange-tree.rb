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
    if @age > 3
      @growing_fruit = true
    end
  end

  def check_this
    puts "Checking"
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

  elsif input == "3"

  elsif input == "4"

  else
    puts "That's not an option.  Please pick a number."
  end
end
