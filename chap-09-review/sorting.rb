list = ["cats", "dogs", "frogs", "elves", "animals", "boys", "girls"]

sorted = []

until (list == []) do
  word = list.min

  list.delete(word)

  sorted.push(word)
end

puts sorted
