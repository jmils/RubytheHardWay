#Sets the variable formatter equal to the string with other variables in it.
formatter = "%{first} %{second} %{third} %{fourth}"

# Prints the variable formatter with the values 1 2 3 4.
puts formatter %{first: 1, second: 2, third: 3, fourth: 4}
#Prints the variable formatter with the values one two three four.
puts formatter % {first: "one", second:"two", third: "three", fourth: "four"}
#Prints the variable formatter with the values true false true false.
puts formatter % {first: true, second: false, third: true, fourth: false}
#Prints the variable formatter with itself as the value for first second third and fourth. So prints the string on line 2, 4 times.
puts formatter % {first: formatter, second:formatter, third: formatter, fourth: formatter}

#Prints the variable formatter with the strings as each value for first second third and fourth.
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
