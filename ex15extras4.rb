#Asks for filename as arugment
filename = ARGV.first
#creates prompt
prompt = "> "
#Opens the file and puts its conetents in a variable
txt = File.open(filename)
#show s the contents of the file to the users
puts "Here's your file: #{filename}"
#actually shows file
puts txt.read()

