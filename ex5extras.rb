name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'


puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on coffee." % teeth

# this line is tricky, try to get it exactly right
puts "if I add %d, %d, and %d I get %d." %[
	age, height, weight, age + height + weight]

puts "I will now convert the inches to centimers and the pounds to kilos"
puts "height in CM "  
puts height * 2.54  
puts "Weight in Kilos" 
puts weight / 2.2
