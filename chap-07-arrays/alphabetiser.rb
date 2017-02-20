array = []
puts "Please enter a word!"

while (input = gets.chomp) != ""
  array.push(input)
  puts "Great, and another!"
end

puts "Alphabetising.... Done!"
puts array.sort
