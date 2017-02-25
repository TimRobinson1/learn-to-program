require "yaml"

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

variable = "test variable"

test_array = ["Slick Shoes", "Bully Blinders", "Pinchers of Peril", true, "true", 10, '10', :contor, variable, "test"]

filename = "./chap-10-saving/DatasGadgets.txt"

# Saving
yaml_save test_array, filename

# Loading
read_array = yaml_load filename

puts read_array[2]
