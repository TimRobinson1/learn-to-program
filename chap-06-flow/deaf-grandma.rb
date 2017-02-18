puts "What is it, sonny?"
while true
  reply = gets.chomp
  if reply == "BYE"
    exit(0)
  end
  if reply == reply.upcase
    puts "NO, NOT SINCE 19#{rand(30..50)}!"
  else
    puts "HUH?!  SPEAK UP, SONNY!"
  end
end
