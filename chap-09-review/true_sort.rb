class Array

  def dictionary_sort

    list = self.join(" ").downcase.split(" ")

    mid_array = []

    sorted = []

    until (list == []) do
      word = list.min

      list.delete(word)

      mid_array.push(word)
    end

    mid_array.each do |x|
      if self.include?(x)
        sorted.push(x)
      else
        sorted.push(x.capitalize)
      end
    end

    sorted
  end

end

arr = ["Apples", "bananas", "Grapes", "cherries", "Delicious", "exciting", "fruit"]

puts arr.dictionary_sort
