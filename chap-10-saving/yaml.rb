require "yaml"

test_array = ["Give Quiche A Chance", "Mutants Out!", "Chameleonic Life-Forms, No Thanks"]

test_string = test_array.to_yaml

filename = "./chap-10-saving/RimmerTShirts.txt"

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

read_array = YAML::load read_string

# These verify that what is saved is correct.
puts(read_string == test_string)
puts(read_array == test_array)
