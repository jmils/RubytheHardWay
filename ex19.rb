#Creates a function called cheese_and_crackers and passes two arguments called cheese_count and boxes_of_crackers.
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket. \n"
end


puts "We can just give the function numbers directly:"
#Calls the function with numbers. Passes the value 20 for cheese_count and 30 for boxes_of_crackers
cheese_and_crackers(20,30)


puts "OR, we can use variables from our script:"
#Creates two new variables
amount_of_cheese = 10
amount_of_crackers = 50

#Calls the function with variables as the arguments.
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
#Calls the function with numbers but the two arguments are equal to the value of the math equations.
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
#Calls the function using variables AND numbers as the arguments
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def my_beer_inventory(beer, breweries)
  puts "You have #{beer} beers from #{breweries} breweries!"
end

#1
my_beer_inventory(6, 3)

#2
cans_of_beer = 5
bottles_of_beer = 8

my_beer_inventory(cans_of_beer + bottles_of_beer, 3)

#3
local_breweries = 2
national_breweries = 2

my_beer_inventory(10, local_breweries + national_breweries)

#4
my_beer_inventory(bottles_of_beer + cans_of_beer, local_breweries + national_breweries)

#5
my_beer_inventory(10 + 4, 1)

#6
my_beer_inventory(4, 1 + 1)

#7
total_beer = 15
total_breweries = 5

my_beer_inventory(total_beer, total_breweries)

#8
print "How many beers do you have?"
number_of_beers = gets.chomp
print "How many breweries are they from?"
number_of_breweries = gets.chomp

my_beer_inventory(number_of_beers, number_of_breweries)

#9
my_beer_inventory(cans_of_beer + 2, local_breweries + 3)

#10
print "How many cans of beer do you have? "
cans = gets.chomp
print "How many bottles of beer do you have? "
bottles = gets.chomp
print "How many breweries are they from? "
breweries = gets.chomp

my_beer_inventory(cans + bottles, breweries)
