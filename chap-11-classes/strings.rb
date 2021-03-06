# The [...] method works with strings, too:
lord_voldemort = "Tom Riddle"
initials = lord_voldemort[0] + "." + lord_voldemort[4] + "."
puts initials

prof = "We tore the universe a new space-hole, alright!"
puts prof[12, 8]
puts prof[12..19] # 8 characters total
puts ""

def is_avi? filename
  filename.downcase[-4..-1] == ".avi"
end

puts is_avi?("test-video.avi")
puts is_avi?("test-image.png")
