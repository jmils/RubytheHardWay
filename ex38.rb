#Creates the variable ten_things equal to the string.
ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

#Takes the ten_things string and divides into substrings returning an array equal to the variable stuff.
#The space in the parenthesis tells it to split where there's a white space
stuff = ten_things.split(' ')

#New variable equal to an array called more_stuff
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

#using math to make sure there's 10 items
#Loop that runs while the length of the array is less than 10 items.
while stuff.length != 10
#Creates a variable called next_one that's equal to the last item in the more_stuff array.
  next_one = more_stuff.pop
#prints string letting you know which item is gettig added.
  puts "Adding: #{next_one}"
#Pushes the last item from the more_stuff array and adds it into the stuff array
  stuff.push(next_one)
#Prints a string letting you know how many items are in the stuff array now.
  puts "There are #{stuff.length} items now."
#Loop ends when stuff.lenth is equal to 10
end

#Print the array stuff
puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

#prints the 1 position item in the array. 2nd item.
puts stuff[1]
#prints the LAST item in the array. It loops around to the back with negative #s
puts stuff[-1]
#prints the last item of the array
puts stuff.pop()
#Converts the array into a string separated by the space and prints.
puts stuff.join(' ')
#Selects items in the array from positions 3 through 5 and turns them into a string separated by the # sign
puts stuff[3..5].join("#")
