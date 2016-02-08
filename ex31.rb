puts "You enter a dark room with three doors. Do you go through door #1, #2 or #3?"
#Prompts the user for input.
print "> "
#Assigns the user's input to the variable door.
door = $stdin.gets.chomp

#If the user input is 1. Then continue with this method.
if door == "1"
#Prints a bunch of shiz to the console. Choice of 1 or 2.
  puts "There's a giant bear here eating a cheesecake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."
#Prompts the user for input.
  print "> "
#Assigns the user's input to the variable bear.
  bear = $stdin.gets.chomp
#Looks at the user's input and runs a new if statement. If bear is 1 then it prints the first string.
  if bear == "1"
    puts "The bear eats your face off. Good job!"
#If bear is 2. It prints the below string.
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
#If the user input doesn't match 1 or 2, then it prints the below string.
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
#ends the method if door = 1.
  end

#If door does not equal 1. Then it moves to this code. If door is two then it prints the below strings.
elsif door == "2"
  puts "You stare into the endless abyss at Cthulu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."
#Prompts the user for input.
  print "> "
#Assigns the users input to the variable insanity.
  insanity = $stdin.gets.chomp
#If the user's input was either 1 or two. It prints the below string.
  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
#If the user's input was not 1 or 2 (ie:3), then it prints this string.
  else puts "The insanity rots your eyes into a pool of muck. good job!"
#Ends the method if door = 2.
  end

elsif door == "3"
  puts "Oh my, it's a roomful of puppies."
  puts "1. Yellow Labs"
  puts "2. Yorkies"
  puts "3. Roos"
  print "> "

  puppies = $stdin.gets.chomp
  if puppies == "1"
    puts "What a bunch of plumpy wrinkle biscuits. What's your next move?"
    puts "1. Snuggle"
    puts "2. Snag one"
    print "> "
    lab_action = $stdin.gets.chomp
    if lab_action == "1"
      puts "All the puppies run to you. You're in Heaven."
    else
      puts "Congratulations. You got yourself a cuddly ball of terror."
    end

  elsif puppies == "2"
    puts "Ooooooo. Not as cute as the others but we'll allow it."
  else
    puts "YASSSsss. Baby Roo Bears times 20?! Can you handle the cuteness?"
  end

#If user input for door is neither 1 or 2. It prints the below string.
else
  puts "Your stumble around and fall on a knife and die. Good job!"
#ends method for door.
end
