def romanise number

  # For thousands, or 'M'
  times = number / 1000
  answer = "M"*times
  number = number - times*1000

  # For nine-hundreds, or 'CM'
  times = number / 900
  answer += "CM"*times
  number = number - times*900

  # For five-hundreds, or 'D'
  times = number / 500
  answer += "D"*times
  number = number - times*500

  # For four-hundreds, or 'CD'
  times = number / 400
  answer += "CD"*times
  number = number - times*400

  # For hundreds, or 'C'
  times = number / 100
  answer += "C"*times
  number = number - times*100

  # For nineties, or 'XC'
  times = number / 90
  answer += "XC"*times
  number = number - times*90

  # For fifties, or 'L'
  times = number / 50
  answer += "L"*times
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
