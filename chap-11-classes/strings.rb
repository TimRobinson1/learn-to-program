# The [...] method works with strings, too:
lord_voldemort = "Tom Riddle"
initials = lord_voldemort[0] + "." + lord_voldemort[4] + "."
puts initials

puts "Hello.  My name is Julian."
puts "I'm extremely perceptive."
puts "What's your name?"

name = gets.chomp
puts "Hi, #{name}."

if name[0] == "D"
  puts "You have excellent taste in clothing."
  puts "I can just tell."
else
  puts "You are pretty average."
end
