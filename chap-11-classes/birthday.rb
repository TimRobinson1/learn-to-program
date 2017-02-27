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

test_hash = {"Dave Gorman" => "2nd March, 1971"}

filename = "./chap-11-classes/Birthdays.txt"

# Saving
yaml_save test_hash, filename

# Loading
read_array = yaml_load filename

puts read_array["Dave Gorman"]
