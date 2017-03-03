def romanise number

  h = { "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10 }

  answer = ""

  h.each do |roman, amount|
    times = number / amount
    answer += roman*times
    number = number - times*amount
  end

  # For fives, or 'V'
  if number % 5 == 4 && number != 4
    answer += "IX"
    number = number - 9
  else
    times = number / 5
    answer += "V"*times
    number = number - times*5
  end

  if (number % 4 == 0) && (number != 0)
    answer += "IV"
  else
    answer += "I"*number
  end

  puts answer

end

romanise(2017)
