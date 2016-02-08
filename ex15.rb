#Sets the first argument to the variable filename
filename = ARGV.first

#Sets the variable to open the file you specified as an argument.
txt = open(filename)

#Prints the string with your argument.
puts "Here's your file #{filename}:"
#The txt variable opens the file and the .read reads it contents which are printed to the console.
print txt.read

#Prompts the user for input
print "Type the filename again: "
#Sets the user's input to file_again
file_again = $stdin.gets.chomp
#Sets a new variable that opens the new filename
txt_again = open(file_again)
#Calls the txt_again variable which opens the file and .read reads the contents and prints it.
print txt_again.read
