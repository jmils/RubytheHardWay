#Line 1 "unpacks" ARGV. Takes whatever arguments you pass in the Terminal and assigns them to the below variables in that order.
first, second, third = ARGV

#prints the below strings with whatever arguments I pass in Terminal for first second and third. If you only passed 2 arguments into the console, it would print a blank for the third. So "Your third variable is: "
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
