puts "Start year, please."
start = gets.chomp
puts "Thanks. End year, please."
final = gets.chomp

array = (start..final).to_a
leap = 0

# At this stage, program only takes the input and makes it an array (to be sorted through later)

array.each do |x|
  y = x.to_i
  if (y % 4 == 0) && (y % 100 != 0)
    leap += 1
  elsif (y % 400 == 0)
    leap += 1
  end
end

puts "There are #{leap} leap years between #{start} and #{final}."
