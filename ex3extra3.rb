puts "This is a calculation I do often." 
puts "hard drive size Gb printed on drive vs real GB space in a computer" 
puts "enter the drive size in GB" 

size = gets.chomp


puts "The size of the drive is " + size.to_s + "Gb"
size = size.to_i.to_f * 0.93
puts "The real size is " + size.to_s + "GB"

