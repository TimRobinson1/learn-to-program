require "yaml"

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

filename = "./chap-11-classes/Birthdays.txt"

# Hash for converting the month into an integer
months = {"Jan" => "01", "Feb" => "02", "Mar" => "03", "Apr" => "04",
  "May" => "05", "Jun" => "06", "Jul" => "07", "Aug" => "08",
  "Sep" => "09", "Oct" => "10", "Nov" => "11", "Dec" => "12"}

# Loading
read_array = yaml_load filename

puts "Who's birthday would you like to check?"
input = gets.chomp

# Birth date read from file
date = read_array[input][-12..-1]

# Birth date broken down for ease into day, month and year - d, m, y
m = months[date[0..2]].to_i
d = date[4..5]
y = date[-4..-1]

# Current time, then broken into current day and month
now = Time.now
current_month = now.to_s[5..6].to_i
current_day = now.to_s[8..9].to_i

# String representing when their next birthday is.
is_next_year = "#{input}'s next birthday is: #{date[0..6]} 2018"
is_this_year = "#{input}'s birthday is this year, on #{date[0..5]}."

# Ages for this year, next year and the current day.
age = "He will be #{2018 - y.to_i} years old."
age_soon = "He will be #{2017 - y.to_i} years old."
age_now = "He is #{2018 - y.to_i} years old."


if (read_array[input] == nil)
  puts "Either that name is not on the list,"
  puts "or it has been mispelled."
else
  if current_month > m.to_i
    puts is_next_year
    puts age
  elsif (current_day > d.to_i) && (current_month > m.to_i)
    puts is_next_year
    puts age
  elsif (current_day == d.to_i) && (current_month == m.to_i)
    puts "Today is their birthday!"
    puts age_now
  else
    puts is_this_year
    puts age_soon
  end
end
