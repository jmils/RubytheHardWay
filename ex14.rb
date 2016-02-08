user_name, age = ARGV #There are two arguments
prompt = '> ' #This is what shows when we call the prompt

#Prints strings with the first two arguments then prompts the user for input with the question. Assigns the user input to the variable "likes"
puts "Hi #{user_name}. You said you're #{age} years old."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts prompt
likes = $stdin.gets.chomp

#Prints a string that prompts the user for input. Assigns user input the variable "lives"
puts "Where do you live #{user_name}? "
puts prompt
lives = $stdin.gets.chomp

#Same deal as above
puts "When did you turn #{age}?"
puts prompt
birthday = $stdin.gets.chomp

#a comma for puts is like using it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

#Prints the string with all the new variables
puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you havea a #{computer} computer. Nice.
Your birthday is #{birthday}
"""
