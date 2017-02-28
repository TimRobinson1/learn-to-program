# Editing the Integer class to turn integers into English, such
# as in chapter 8, with big-example.rb

class Integer
  def to_eng
    if self == 5
      english = "five"
    else
      english = "forty-two"
    end

    english
  end
end

puts 5.to_eng
puts 42.to_eng
