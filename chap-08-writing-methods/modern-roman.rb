def romanise number

  # For fifties, or 'L'
  times = number / 50
  answer = "L"*times
  number = number - times*50

  # For tens, or 'X', and 'XL' for forties
  times = number / 10
  if times == 4
    answer += "XL"
  else
    answer += "X"*times
  end

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
romanise(38)
romanise(39)
romanise(40)
romanise(41)
romanise(42)
romanise(43)
romanise(44)
romanise(45)
romanise(46)
romanise(47)
romanise(48)
romanise(49)
romanise(50)
romanise(51)
romanise(52)
romanise(53)
romanise(54)
romanise(55)
romanise(90)
