def romanise number

  # For tens, or 'X'
  times = number / 10
  answer = "X"*times
  number = number - times*10

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

romanise(1)
romanise(2)
romanise(3)
romanise(4)
romanise(5)
romanise(6)
romanise(7)
romanise(8)
romanise(9)
romanise(10)
romanise(11)
romanise(12)
romanise(13)
romanise(14)
romanise(15)
romanise(16)
romanise(17)
romanise(18)
romanise(19)
romanise(20)
