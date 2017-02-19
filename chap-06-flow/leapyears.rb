puts "Start year, please."
start = gets.chomp
puts "Thanks. End year, please."
final = gets.chomp

# Establishing array and integer
array = (start..final).to_a
leap = []

# Looping through each year in array.

array.each do |i|
  x = i.to_i
  if (x % 4 == 0) && (x % 100 != 0)
    leap.push(x)
  elsif (x % 400 == 0)
    leap.push(x)
  end
end

puts "There are #{leap.count} leap years between #{start} and #{final}."
puts "These leap years are #{leap.join(', ')}."
