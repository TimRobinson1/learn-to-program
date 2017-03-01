# Calculating factorials re-written from Chapter 9 to affect the Integer class.

class Integer
  def factorial
    if self < 0
      return "You can't take the factorial of a negative number!"
    end

    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
end

puts 4.factorial
puts 23.factorial
