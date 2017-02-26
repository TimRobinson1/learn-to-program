# Basic array
letters = "a".."d"
puts letters.to_a

# Verify this has worked as expected:
puts(["a", "b", "c", "d"] == letters.to_a)

# Array with integers
numbers = 1..10
puts numbers.to_a

# Iterating over a range
("A".."Z").each do |letter|
  print letter
end

puts ""

the_70s = 1970..1979

puts the_70s.min
puts the_70s.max
puts the_70s.include?(1979)
puts the_70s.include?(1980)
puts the_70s.include?(1974.5)
