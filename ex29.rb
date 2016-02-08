people = 40
cats = 15
dogs = 150

if people < cats
  puts "Too many cats! The world is doomed."
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end

cats += 50

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end

if people == dogs
  puts "People are dogs."
end

if people < cats
  puts "At LAST. We're freeeee!"
end

if dogs < cats
  puts "It's time. Unleash the plan for world domination. Meow."
end

if people == dogs && cats > dogs
  puts "Muhahaha! Cat's still rule."
end
