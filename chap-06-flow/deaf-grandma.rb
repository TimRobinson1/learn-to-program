puts "What is it, sonny?"
while true
  reply = gets.chomp
  if reply == "BYE"
    exit(0)
  end
  if reply == reply.upcase
    puts "NO, NOT SINCE 1938!"
  else
    puts "HUH?!  SPEAK UP, SONNY!"
  end
end
