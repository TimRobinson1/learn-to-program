require "yaml"

# Loading function from file
def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

# Text file location
filename = "./chap-11-classes/Birthdays.txt"

# Hash for converting the month into an integer
months = {"Jan" => "01", "Feb" => "02", "Mar" => "03", "Apr" => "04",
  "May" => "05", "Jun" => "06", "Jul" => "07", "Aug" => "08",
  "Sep" => "09", "Oct" => "10", "Nov" => "11", "Dec" => "12"}

# Loading
read_array = yaml_load filename

# Introduction text.
puts "Would you like to..."
puts "1) View the list."
puts "2) Check birth date with name."
print "Number: "
input = gets.chomp

if input == "1"
  puts read_array.to_yaml
  exit(0)
end

puts "Who's birthday would you like to check?"
input = gets.chomp

if (read_array[input] == nil)
  if read_array["Dave #{input}"] != nil
    puts "Changing to 'Dave #{input}'..."
    input = "Dave #{input}"
  else
    puts "Please check the list or your spelling."
    exit(0)
  end
end

# Birth date read from file
date = read_array[input][-12..-1]

# Birth date broken down for ease into day, month and year - d, m, y
m = months[date[0..2]].to_i
d = date[4..5].to_i
y = date[-4..-1].to_i

# Current time, then broken into current day and month
now = Time.now
current_month = now.to_s[5..6].to_i
current_day = now.to_s[8..9].to_i

# String representing when their next birthday is.
is_next_year = "#{input}'s next birthday is: #{date[0..6]} 2018"
is_this_year = "#{input}'s birthday is this year, on #{date[0..5]}."

# Ages for this year, next year and the current day.
age = "He will be #{2018 - y} years old."
age_soon = "He will be #{2017 - y} years old."
age_now = "He is #{2018 - y} years old."

if current_month > m
  puts is_next_year
  puts age
elsif (current_day > d) && (current_month > m)
  puts is_next_year
  puts age
elsif (current_day == d) && (current_month == m)
  puts "Today is their birthday!"
  puts age_now
else
  puts is_this_year
  puts age_soon
end
