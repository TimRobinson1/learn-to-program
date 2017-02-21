def doubleIt num
  numTimes2 = num*2
  puts num.to_s + " doubled is " + numTimes2.to_s
end

doubleIt 33

# Example of a local variable failing to be used
doubleThis 44
puts numTimes2.to_s
