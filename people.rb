class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end

end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

chris.greeting
cristina.greeting

chris.teach
cristina.learn

# would not be able to define method "learn" b/c the class, "instructor",
#  does not define "learn" and neither does its super class
chris.learn
# same as above, student class does not hold method teach, and neither
#  does its super class
cristina.teach
