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
current_day = now.to_s[8..9].to_i
is_next_year = "#{input}'s next birthday is: #{date[0..6]} 2018"
is_this_year = "#{input}'s birthday is this year, on #{date[0..5]}."


if (read_array[input] == nil)
  puts "Either that name is not on the list,"
  puts "or it has been mispelled."
else
  if current_month > m.to_i
    puts is_next_year
  elsif (current_day > d.to_i) && (current_month > m.to_i)
    puts is_next_year
  elsif (current_day == d.to_i) && (current_month == m.to_i)
    puts "Today is their birthday!"
  else
    puts is_this_year
  end
end
