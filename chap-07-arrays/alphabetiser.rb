array = []
puts "Please enter a word!"
input = gets.chomp

while input != ""
  array.push(input)
  puts "Great, and another!"
  input = gets.chomp
end

puts "Alphabetising.... Done!"
puts array.sort
