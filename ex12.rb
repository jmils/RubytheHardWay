print "Give me a number: "
number = gets.chomp.to_f

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

print "How much money do you have? I'll give you back 10%."
money = gets.chomp.to_f
change = money * 0.10
puts "Here's your change: #{change}. Thank you! "
