toast = Proc.new do
  puts "Cheers!"
end

# A proc is a block of code we can store as an object and run.

toast.call
toast.call
toast.call

# Procs can also take parameters

do_you_like = Proc.new do |good_things|
  puts "I REALLY like #{good_things}"
end

do_you_like.call "chocolate"
do_you_like.call "ice cream"
