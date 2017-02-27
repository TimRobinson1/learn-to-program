require "yaml"

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

filename = "./chap-11-classes/Birthdays.txt"

months = {"Jan" => "01", "Feb" => "02", "Mar" => "03", "Apr" => "04",
  "May" => "05", "Jun" => "06", "Jul" => "07", "Aug" => "08",
  "Sep" => "09", "Oct" => "10", "Nov" => "11", "Dec" => "12"}

# Loading
read_array = yaml_load filename

puts "Who's birthday would you like to check?"
input = gets.chomp

date = read_array[input][-12..-1]
m = months[date[0..2]]
d = date[4..5]
y = date[-4..-1]
birth = Time.new(y, m, d)
now = Time.now
current_month = now.to_s[5..6].to_i


if (read_array[input] == nil)
  puts "Either that name is not on the list,"
  puts "or it has been mispelled."
else
  if current_month > m.to_i
    puts "#{input}'s next birthday is: #{date[0..6]} 2018"
    puts "He will be #{2018 - y.to_i}."
  else
    puts "Nah"
  end
end
