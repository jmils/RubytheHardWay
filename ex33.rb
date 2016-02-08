def function(i)
  numbers = []
  variable = 8
  increment = 2
  while i < variable
  puts "At the top i is #{i}"
  numbers.push(i)

  i += increment
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "
end

#remember you can write this 2 other ways?
#numbers.each {|num| puts num}
function(0)


numbers = []
(0..6).each do |b|
  puts "At the top is #{b}"
  numbers.push(b)
end
