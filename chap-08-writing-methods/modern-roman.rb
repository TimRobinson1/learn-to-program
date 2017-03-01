def romanise number

  # For fives, or 'V'
  times = number / 5
  answer = "V"*times
  number = number - times*5

  if (number % 4 == 0) && (number != 0)
    answer += "IV"
  else
    answer += "I"*number
  end

  puts answer

end

romanise(1)
romanise(2)
romanise(3)
romanise(4)
romanise(5)
romanise(6)
romanise(7)
romanise(8)
