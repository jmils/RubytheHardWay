def gold_room
  puts "This room is full of gold. How many bricks do you take?"

  print "> "
  choice = $stdin.gets.chomp

  #this line has a bug so fix it
  if choice.include?("0") || choice.include?("1")
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

 if how_much < 50
   puts "Nice, you're not greedy, you win!"
   exit(0)
 else
   dead("You greedy bastard!")
 end
end

#New function called bear_room. Prints 4 strings.
def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
#Defines a variable called bear_moved and sets it equal to false
  bear_moved = false
#Starts a while loop. While true, print the prompt
  while true
    print "> "
#Sets user input equal to the choice variable
    choice = $stdin.gets.chomp
#Start an if/else statement. If the choice equals "take honey". It runs the function dead and uses the string in parenthesis as the why argument.
    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
#If the choice equals taunt bear and the bear_moved is true, then it will print the string.
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
#Sets bear_moved equal to true.
      bear_moved = true
#If the choice equals "taunt bear" and the bear moved is false, then the dead function is called and it passes the string as the why arugument.
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
#If the choice equals "open door" and the bear moved is false, then the gold room function is called.
    elsif choice == "open door" && bear_moved
      gold_room
#If the choice is anything other than the above then it prints the below string.
    else
      puts "I got no idea what that means."
#Ends the if statement
    end
#Ends the while loop
  end
#Ends the function
end

#New function cthulhu_room. Prints 3 strings and prompts the user.
def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
#Assigns the variable choice to the user input
  choice = $stdin.gets.chomp
#Starts an if/else statement. If user input includes "flee", then calls the function start.
  if choice.include? "flee"
    start
#If user input includes "head", then the function dead is called and passes the string as the why argument.
  elsif choice.inlcude? "head"
  dead("Well that was tasty!")
  else
#If the user input doesn't includes either "head" or "flee" then it calls the function again, starts you at the beginning of cthulhu_room
  cthulhu_room
#Ends the if/else statement
  end
#ends the cthulhu_room function
end

#New function dead with 1 argument "why". Prints the "why" and the string.
def dead(why)
  puts why, "Good job!"
#Exits the function with zero status.
  exit(0)
end

#New function "start", no argument. Prints three lines and a prompt.
def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
#Assigns the user input to "choice"
  choice = $stdin.gets.chomp
#Starts an if/else statement. If user input is equal to left. Then the bear_room function is called.
  if choice == "left"
    bear_room
#If the user input is equal to right. Then the cthulhu_room function is called.
  elsif choice == "right"
    cthulhu_room
  else
#if the user input is anything other than left or right. The dead function is called with the below string as the "why"
    dead("You stumble around the room until you starve.")
#ends the if loop
  end
#ends the function start
end

#Calls the start function which "begins" the game
start
