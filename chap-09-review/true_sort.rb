arr = ["Apples", "bananas", "Grapes", "cherries", "Delicious", "exciting", "fruit"]

list = arr.join(" ").downcase.split(" ")

mid_array = []

sorted = []

until (list == []) do
  word = list.min

  list.delete(word)

  mid_array.push(word)
end

mid_array.each do |x|
  if arr.include?(x)
    sorted.push(x)
  else
    sorted.push(x.capitalize)
  end
end

puts sorted
