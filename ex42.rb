## Animal is-a object look at the extra credit
class Animal
  def
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ##Dog has-a name
    @name = name
  end
end

##Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ##Cat has-a name
    @name = name
  end
end

class Person

  def initialize(name)
    ##Person has-a name
    @name = name
    ##Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

##Employee is-a Person
class Employee < Person

   def initialize(name, salary)
     ##Employee has-a name.
     super(name)
     ##Employee has-a salary
     @salary = salary
   end
 end

 ##Fish is-a
 class Fish
 end

 ##Salmon is-a Fish
 class Salmon < Fish
 end

##Halibut is-a Fish
 class Halibut < Fish
 end

##Rover is-a Dog
rover = Dog.new("Rover")

##Satan is-a Cat
satan = Cat.new("Satan")

##Mary is-a Person
mary = Person.new("Mary")

##Mary has-a pet named satan
mary.pet = satan

##Frank is-a Person and is-a Employee
##Frank has-a salary
frank = Employee.new("Frank, 120000")

##Frank has-a pet named Rover
frank.pet = rover

##Flipper is-a fish
flipper = Fish.new

##Crouse is-a Salmon
crouse = Salmon.new

##Harry is-a Halibut
harry = Halibut.new
