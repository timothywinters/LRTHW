filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL + C (^C)."
puts "If you do want that hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "trunacating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm giong to ask you for those three lines."

print "Line1:"; line1 = STDIN.gets.chomp()
print "Line2:"; line2 = STDIN.gets.chomp()
print "Line3:"; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()
