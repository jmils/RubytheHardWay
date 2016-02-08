#Assigns the first argument to the variable filename
filename = ARGV.first

#Prints the strings. First string includes the filename variable.
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

#gets user input
$stdin.gets

#Prints the string
puts "Opening the file..."
#Assigns the variable target to open the file. Open in "write" mode. 'w' a string with a character that says what mode to be in when it opens the file. w says open this file in 'write' mode. Need to do that becase by default open() is read. r  = read a = append
target = open(filename, 'w')

#Prints the string
puts "Truncating the file.  Goodbye!"
#Erases the file to 0 lines?. Not necessary when opening the file in 'w' mode because that truncates it automatically.
target.truncate(0)

puts "Now I'm going to ask you for three lines."

#Prompts the user for input and assigns to the variables.
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

#Write the value of line1 (user input) into the file
target.write("#{line1}\n #{line2}\n #{line3}\n")
#Writes a new line
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

puts "And finally, we close it."
#Closes the file
target.close

puts "I'm going to open and read your file"
new_target = open(filename, 'r')
print new_target.read
