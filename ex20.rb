#Sets the first argument in the Terminal as the variable input_file
input_file = ARGV.first

#function with 1 variable that reads the file.
def print_all(f)
  puts f.read
end

#function w 1 variable that starts at the beginning of the file.
def rewind(f)
  f.seek(0)
end

#function with 2 variables that prints the line_count and part of the file
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

#creates a variable that opens the first argument in the terminal
current_file = open(input_file)

puts "First let's print the whole file: \n"

#calls the function and passes current_file as the value. The function reads the open file input_file
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

#calls the function and passes current_file as a value. The function starts the file input_file from the beginning.
rewind(current_file)

puts "Let's print three lines:"

#creates a variable equal to 1
current_line = 1
#calls the function and passes current_line and current_file as the values. Prints 1 and the first line of the file.
print_a_line(current_line, current_file)

#changes the variable current_line.
current_line += 1
#calls the fuction and passes new current_line and current_file as values. Prints 2 and the second line of the file.
print_a_line(current_line, current_file)

#changes the variable current_line.
current_line += 1
#calls the function and passes new current_line and current_file as the values. Prints 3 and the third line of the file.
print_a_line(current_line, current_file)
