#create a mapping of state to abbreviation.
#State is the key, abbreviation is the value
states = {
'Oregon' => 'OR',
'Florida' => 'FL',
'California' => 'CA',
'New York' => 'NY',
'Michigan' => 'MI'
}

#create a basic set of states and some cities in them
#City abbrev is the key, city name is the value
cities = {
  'CA' => 'San Fransico',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

#add some more cities into the cities hash
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

#puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every state abbreviation
puts '-' * 10
#Loop on the states hash that names 2 variables.
#Says for every value in this hash, put the string with the state variable and abbrev variable.
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

#puts every city in state
puts '-' * 10
#Loop on the citites hash that names 2 variables.
#Says for each value in this hash, put the string with the abbrev variable and city variable
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

#now do both at the same time
puts "-" * 10
#Loop on the states hash that names 2 variables.
#For each value in state
states.each do |state, abbrev|
#Introduces a new variable city that calls the cities hash uses the variable abbrev from state loop.
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
#by default ruby says "nil" when something isn't in there
state = states['Texas']

#If the state is false (which it is), print the string
if !state
  puts "Sorry, no Texas."
end

#default values using //= with the nil result
city = cities['TX']
city ||= "Does Not Exist"
puts "The city for the state 'TX' is: #{city}"
