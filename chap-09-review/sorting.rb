list = ["cats", "dogs", "frogs", "elves", "animals", "boys", "girls"]
string = "olives and monkeys are orgaised according to xenophobic ideals in categorization of forms of life"
str = string.split(" ")

sorted_array = []
sorted_string = []

until (list == []) do
  word = list.min

  list.delete(word)

  sorted_array.push(word)
end

until (str == []) do
  word = str.min

  str.delete(word)

  sorted_string.push(word)
end

puts "Alphabetized, the array is:"
puts sorted_array
puts ""
puts "Alphabetized, the string is:"
puts sorted_string.join(" ")
