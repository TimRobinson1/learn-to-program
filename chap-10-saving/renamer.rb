Dir.chdir '../Processed'

pic_names = Dir['../Pictures/**/*.png']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts ""
print "Downloading #{pic_names.length} files:  "

pic_number = 1

pic_names.each do |names|
  print '.' # Progress bar

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  File.rename names, new_name

  pic_number = pic_number + 1
end

puts "" # To avoid progress bar line.
puts "Done!"
