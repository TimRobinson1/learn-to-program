class Die

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

end

# This produces 'nil', which in this instance (a dice roll) doesn't make any sense.
puts Die.new.showing
