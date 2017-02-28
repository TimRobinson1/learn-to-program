class Die

  def initialize
    # initialize is a standard method that runs automatically when the object is called on.
    # This calls the method 'roll', but it's not the only thing that can be put here.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def cheat
    number = gets.chomp.to_i
    while (number > 6 || number < 1) do
      puts "A die can't land on that, cheater!"
      number = gets.chomp.to_i
    end
    @number_showing = number
    "The dice rolled: #{number}"
  end

  def showing
    @number_showing
  end

end

# This produces 'nil', which in this instance (a dice roll) doesn't make any sense.
die = Die.new

puts die.cheat
