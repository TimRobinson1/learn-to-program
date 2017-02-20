puts "Start year, please."
start = gets.chomp
year = start.to_i
puts "Thanks. End year, please."
final = gets.chomp

puts "The leap years in the range between #{start} and #{final} are:"
while year <= final.to_i
  if (year % 4 == 0) && (year % 100 != 0)
    puts year
  elsif (year % 400 == 0)
    puts year
  end
  year += 1
end
