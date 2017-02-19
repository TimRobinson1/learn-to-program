puts "Start year, please."
start = gets.chomp
puts "Thanks. End year, please."
final = gets.chomp

# Establishing array and integer
array = (start..final).to_a
leap = 0

# Looping through each year in array.

array.each do |i|
  x = i.to_i
  if (x % 4 == 0) && (x % 100 != 0)
    leap += 1
  elsif (x % 400 == 0)
    leap += 1
  end
end

puts "There are #{leap} leap years between #{start} and #{final}."
