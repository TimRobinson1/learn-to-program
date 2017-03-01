def romanise number
  fives = number / 5
  answer = "V"*fives
  remainder = number - fives*5
  answer += "I"*remainder
  puts answer
end

romanise(7)
