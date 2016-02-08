people = 10
cars = 20
trucks = 35

#Checks to see if the value of cars is greater than people.
if cars > people
#If it is true, it will print the below string.
  puts "We should take the cars."
#If the above code doesn't pass. Then it will check to see if the value of cars is less than people.
elsif cars < people
#Prints the below string if true.
  puts "We should not take the cars."
#If neither of the above statements are true it will print the below string.
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end
