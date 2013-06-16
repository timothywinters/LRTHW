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
#asks again for file 
puts "I'll also ask you to type it again:"
#prompt to get file name
print prompt
#Variable for filename - return
file_again = STDIN.gets.chomp()
#puts file again and opens it
txt_again = File.open(file_again)
#puts file
puts txt_again.read()
