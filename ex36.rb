have_money = false

def start (have_money)
  puts "You are in a dark room. There are 4 doors in front of you."
  puts "Do you pick door number 1, 2, 3 or 4?"
  print "Answer:  "

  answer = gets.chomp

  if answer == "1" || answer == "one"
    fat_pig
  elsif answer == "2" || answer == "two"
    kylie_jenner
  elsif answer == "3" || answer == "three"
    troll
  elsif answer == "4" || answer == "four"
    banana_stand have_money
  else
    puts "Mm wrong. Try again"
    start
  end
end

def dead(reason)
  puts reason, "You dead!"
  exit(0)
end

def fat_pig
  puts "There's a giant fat pig wearing a crown and sitting on a throne in this room."
  puts "What do you do? Pick a number."
  puts "1. Feed the fat lard"
  puts "2. Oink at the tubby royalty"
  puts "3. Fire up the grill!"
  print "Answer: "

  answer = gets.chomp
  if answer == "1" || answer == "one"
    puts "The pig is happy and gobbles up all your food..."
    puts  "But then he farts."
    dead("The gas engulfs the room and suffocates you.")
  elsif answer == "2" || answer == "two"
    puts "How dare you insult the royal swine!"
    dead("The pig is VERY angry and crushes you into the wall.")
  elsif answer == "3" || answer == "three"
    puts "Boy that bacon was delicious! Your belly is full."
    start
  else
    puts "Mm wrong. Try again"
    fat_pig
  end
end

def kylie_jenner
  puts "Oh God. Kylie Jenner is in this room."
  puts "What do you do? Pick a number."
  puts "1. Take a selfie with her. She's famous!"
  puts "2. Break the wifi"
  puts "3. Douse her in makeup remover."
  print "Answer: "

  answer = gets.chomp
  if answer == "1" || answer == "one"
    puts "NO."
    dead("It's for the best.")
  elsif answer == "2" || answer == "two"
    puts "Her social media is inaccessible rendering her useless."
    puts "Good job. You may pass through the secret door."
    troll
  elsif answer == "3" || answer == "three"
    puts "Her makeup melts off. The sight is unbearable."
    dead("Your eyeballs are seared.")
  else
    puts "Mm wrong. Try again"
    kylie_jenner
  end
end

def troll (have_money)
  puts "Yikes. There's a mean looking troll in this room."
  puts "What do you do? Pick a number."
  puts "1. Pay the troll toll."
  puts "2. Run."
  puts "3. Fight the bastard."
  print "Answer: "
  answer = gets.chomp
  if have_money == false
    puts "You don't have any money."
    start
  elsif (answer == "1" || answer == "one") && have_money == true
    puts "You may pass."
    puts "Now you are in another room and there is a little boy."
    puts "What do you do? Pick a number."
    puts "1. Take the boy's hand."
    puts "2. Take the boy's soul."
    print "Answer:  "
    answer = gets.chomp
    if answer == "2" || answer == "two"
      puts "YOU WIN. Good job!"
      exit(0)
    else
      puts "The boy is possessed."
      dead("You soul is taken.")
    end
  elsif answer == "2" || answer == "two"
    puts "Too slow."
    dead("The troll hits you with his club.")
  elsif answer == "3" || answer == "three"
    puts "Valiant effort. But, no."
    dead("The troll hits you with his club.")
  else
    puts "Mm wrong. Try again"
    troll
  end
end

def banana_stand (have_money)
  puts "This room has a frozen banana stand."
  puts "What do you do? Pick a number."
  puts "1. Burn it down."
  puts "2. Eat a frozen banana with nuts and chocolate."
  puts "3. Take money from the register."
  print "Answer: "

  answer = gets.chomp

  if answer == "1" || answer == "one"
    puts "There's always money in the banana stand."
    dead("Too much smoke and no windows! Suffocation.")
  elsif answer == "2" || answer == "two"
    puts "Mmm tasty. What next?"
    puts "1. Burn it down"
    puts "2. Take money "
    print "Answer: "

    answer = gets.chomp
    if answer == "1" || answer == "one"
      puts "There's always money in the banana stand."
      dead("Too much smoke and no windows! Suffocation.")
    elsif answer == "2" || answer == "two"
      puts "There's always money in the banana stand!"
      have_money = true
      puts "You may pass through the secret door."
      troll have_money
    else
      puts "Mm wrong. Try again"
      banana_stand
    end
  elsif answer == "3" || answer == "three"
    puts "There's always money in the banana stand!"
    have_money = true
    puts "You may pass through the secret door."
    troll have_money
  else
    puts "Mm wrong. Try again"
    banana_stand have_money
  end
end

start have_money
