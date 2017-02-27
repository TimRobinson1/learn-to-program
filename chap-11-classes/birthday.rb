require "yaml"

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

filename = "./chap-11-classes/Birthdays.txt"

# Loading
read_array = yaml_load filename

puts "Who's birthday would you like to check?"
input = gets.chomp

if (read_array[input] == nil)
  puts "Either that name is not on the list,"
  puts "or it has been mispelled."
else
  puts read_array[input]
end
