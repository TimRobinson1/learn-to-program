# This program produces old-style roman numerals
# i.e. 9 is VIIII rather than IX

def romanise number
  times = number / 10
  answer = "X"*times
  number = number - times*10

  times = number / 5
  answer += "V"*times
  number = number - times*5

  answer += "I"*number
  puts answer
end

romanise(18)
