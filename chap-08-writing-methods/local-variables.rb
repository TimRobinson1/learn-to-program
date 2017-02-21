# An example of the convenience of local variables

def littlePest var
  var = nil
  puts "HAHA!  I ruined your variable!"
end

var = "You can't even touch my variable!"
littlePest var
puts var
