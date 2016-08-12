class Rover

  attr_accessor :location, :direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  #how to move and turn
  def read_instructions
    puts "How would you like rover 1 to move?"
    puts "'L' / 'R' - to rotate rover 90 degrees left or right respectively"
    puts "'M' - to move forward one grid point and maintain the same heading"
    instructions = gets.chomp
  end
    

end
