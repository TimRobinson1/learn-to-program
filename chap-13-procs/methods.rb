# This is a method that takes a proc as a variable.

def do_self_importantly some_proc
  puts "Everybody just hold on!  I'm doing something..."
  some_proc.call
  puts "Okay everyone, I'm done.  As you were."
end

say_hello = Proc.new do
  puts "Hello"
end

say_bye = Proc.new do
  puts "Goodbye"
end

do_self_importantly say_hello
do_self_importantly say_bye
