# This program produces old-style roman numerals
# i.e. 9 is VIIII rather than IX

def romanise number
  # For hundreds, or 'C'
  times = number / 100
  answer = "C"*times
  number = number - times*100

  # For fifties, or 'L'
  times = number / 50
  answer += "L"*times
  number = number - times*50

  # For tens, or 'X'
  times = number / 10
  answer += "X"*times
  number = number - times*10

  # For fives, or 'V'
  times = number / 5
  answer += "V"*times
  number = number - times*5

  answer += "I"*number
  puts answer
end

romanise(168)

romanise(32)
