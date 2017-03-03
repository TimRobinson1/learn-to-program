class Integer
  def romanise

    number = self

    key = { "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90,
      "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4 }

    answer = ""

    key.each do |roman, amount|
      times = number / amount
      answer += roman*times
      number = number - times*amount
    end

    puts answer += "I"*number

  end
end

# Yes, we're using the British English spelling with an 's' not 'z'
# because it's just objectively better, okay?

2017.romanise
