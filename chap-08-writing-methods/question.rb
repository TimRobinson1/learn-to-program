def ask question
  goodAnswer = false
  while (not goodAnswer)
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" or reply == "no")
      goodAnswer = true
      if reply == "yes"
        answer = true
      else
        answer = false
      end
    else
      puts "Please answer 'yes' or 'no'."
    end
  end

  answer # This is our return value
end

puts "Hello, and thank you for..."
puts ""

ask "Do you like eating tacos?"
ask "Do you like eating burritos?"
wetsBed = ask "Do you wet the bed?"
ask "Do you like eating chimichangas?"
ask "Do you like eating sopapillas?"

puts ""
puts "END"
puts "Thank you for..."
puts ""
puts wetsBed
