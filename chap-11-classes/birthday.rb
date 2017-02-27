require "yaml"

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

filename = "./chap-11-classes/Birthdays.txt"

# Loading
read_array = yaml_load filename

puts read_array["Dave Franco"]
