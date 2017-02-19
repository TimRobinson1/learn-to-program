puts "Start year, please."
start = gets.chomp
puts "Thanks. End year, please."
final = gets.chomp

array = (start..final).to_a

# At this stage, program only takes the input and makes it an array (to be sorted through later)

puts array
