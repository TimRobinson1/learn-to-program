puts "What is it, sonny?"
bye = 0
while bye != 3
  reply = gets.chomp
  if reply == "BYE"
    bye += 1
  end
  if (reply == reply.upcase && reply != "BYE")
    puts "NO, NOT SINCE 19#{rand(30..50)}!"
    bye = 0
  elsif reply == "BYE"
    puts "WHAT'S THAT YOU SAY?"
  else
    puts "HUH?!  SPEAK UP, SONNY!"
    bye = 0
  end
end

puts "OH OKAY, BYE DEAR!"
