toast = Proc.new do
  puts "Cheers!"
end

# A proc is a block of code we can store as an object and run.

toast.call
toast.call
toast.call
