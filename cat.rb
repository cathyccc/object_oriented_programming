class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name.capitalize
    @preferred_food = preferred_food.downcase
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12 && @meal_time > 0
      return "#{@meal_time} AM"
    elsif @meal_time == 12
      return "#{@meal_time} PM"
    elsif @meal_time == 0
      return "#{@meal_time+12} AM"
    else
      return "#{@meal_time-12} PM"
    end
  end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end

end

garfield = Cat.new("garfield", "bacon", 12)
arlene = Cat.new("arlene", "tuna", 0)

puts garfield.meow
puts arlene.meow
