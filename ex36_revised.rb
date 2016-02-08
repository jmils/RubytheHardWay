def start
  puts "\nYou are in a dark room. There are 4 doors in front of you."
  puts "\nDo you pick door number 1, 2, 3 or 4?"
  print "Answer:  "

  answer = gets.chomp

  case answer
  when "1"
    fat_pig
  when "2"
    kylie_jenner
  when "3"
    troll
  when "4"
    banana_stand
  else
    puts "\nNope. Try again"
    start
  end
end

def dead(reason)
  print reason, "\tYOU DEAD!\n"
  exit(0)
end

def fat_pig
  puts "\nYou see a giant fat pig sitting on a throne and wearing a crown."
  puts "\nWhat do you do? Pick a number."
  puts "\t1. Feed the fat lard."
  puts "\t2. Oink at the tubby royalty."
  puts "\t3. Fire up the grill!"
  print "Answer: "

  answer = gets.chomp
  case answer
  when "1"
    puts "\nThe pig is happy and gobbles up all your food..."
    puts  "\nBut then he farts."
    dead("The gas engulfs the room and suffocates you.")
  when "2"
    puts "\nHow dare you insult the royal swine!"
    dead("\nThe pig is VERY angry and crushes you into the wall.")
  when "3"
    puts "\nBoy that bacon was delicious! Your belly is full."
    start
  else
    puts "\nNope. Try again"
    fat_pig
  end
end

def kylie_jenner
  puts "\nOh God. Kylie Jenner is in this room."
  puts "\nWhat do you do? Pick a number."
  puts "\t1. Take a selfie with her. She's famous!"
  puts "\t2. Break the wifi"
  puts "\t3. Douse her in makeup remover."
  print "Answer: "

  answer = gets.chomp
  case answer
  when "1"
    puts "\nNO."
    dead("It's for the best.")
  when "2"
    puts "\nHer social media is inaccessible rendering her useless."
    puts "\nGood job. You may pass through the secret door."
    troll
  when "3"
    puts "\nHer makeup melts off. The sight is unbearable."
    dead("Your eyeballs are seared.")
  else
    puts "\nNope. Try again"
    kylie_jenner
  end
end

def troll
  puts "\nYikes. There's a mean looking troll in this room."
  puts "\nWhat do you do? Pick a number."
  puts "\t1. Pay the troll toll."
  puts "\t2. Run."
  puts "\t3. Fight the bastard."
  print "Answer: "

  answer = gets.chomp
  case answer
  when "1"
    puts "\nYou don't have any money."
    start
  when "2"
    puts "\nToo slow."
    dead("The troll hits you with his club.")
  when "3"
    puts "\nValiant effort. But, no."
    dead("The troll hits you with his club.")
  end
end

def banana_stand
  puts "\nThis room has a frozen banana stand."
  puts "\nWhat do you do? Pick a number."
  puts "\t1. Burn it down."
  puts "\t2. Eat a frozen banana with nuts and chocolate."
  puts "\t3. Take money from the register."
  print "Answer: "

  answer = gets.chomp

  case answer
  when "1"
    puts "\nNO. There's always money in the banana stand."
    dead("Too much smoke and no windows! Suffocation.")
  when "2"
    puts "\nMmm tasty. What next? Pick a number."
    puts "\t1. Burn it down"
    puts "\t2. Take money "
    print "Answer: "

    answer = gets.chomp
    if answer == "1"
      puts "\nNO. There's always money in the banana stand."
      dead("Too much smoke and no windows! Suffocation.")
    elsif answer == "2"
      puts "\nYES. There's always money in the banana stand!"
      puts "\nYou may pass through the secret door."
      troll2
    else
      puts "\nNope. Try again"
      banana_stand
    end
  when "3"
    puts "\nYES. There's always money in the banana stand!"
    puts "\nYou may pass through the secret door."
    troll2
  else
    puts "\nNope. Try again"
    banana_stand
  end
end

def troll2
  puts "\nYikes. There's a mean looking troll in this room."
  puts "\nWhat do you do? Pick a number."
  puts "\t1. Pay the troll toll."
  puts "\t2. Run."
  puts "\t3. Fight the bastard."
  print "Answer: "

  answer = gets.chomp
  case answer
  when "1"
    puts "\nYou may pass."
    puts "\nNow you are in another room and there is a little boy."
    puts "\nWhat do you do? Pick a number."
    puts "\t1. Take the boy's hand."
    puts "\t2. Take the boy's soul."
    print "Answer:  "
    answer = gets.chomp
    if answer == "2"
      puts "\nYOU WIN. Good job!"
      exit(0)
    elsif answer == "1"
      puts "\nThe boy is possessed."
      dead("You soul is taken.")
    else
      puts "\nNope. Try again"
      troll2
    end
  when "2"
    puts "\nToo slow."
    dead("The troll hits you with his club.")
  when "3"
    puts "\nValiant effort. But, no."
    dead("The troll hits you with his club.")
  end
end

start
