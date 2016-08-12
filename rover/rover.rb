class Rover

  attr_accessor :location, :direction, :x, :y

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  #shows current location
  def current_location
    puts "x:#{@x} y:#{@y} direction:#{@direction}"
  end


  #how to move and turn
  def read_instructions
    puts "How would you like rover to move?"
    instructions = gets.chomp.upcase
    dir_array = instructions.split("") # => ["L", "L", "M", "M"]

    #responds to each movement
    counter = 0
    while counter < dir_array.length
      dir_array.each do |movement|
        if movement == "L"
          puts "rover turns left" # placeholder
          turn_left
        elsif movement == "R"
          puts "rover turns right" # placeholder
          turn_right
        else
          puts "rover moves forward" # placeholder
          move
        end
      counter += 1
      end
    end
  end

  #move instructions
  def move
    case @direction
    when "E"
      @x += 1
    when "W"
      @x -= 1
    when "N"
      @y += 1
    when "S"
      @y -= 1
    end
  end

  # turn left instructions
  def turn_left
    case @direction
    when "N"
      @direction = "W"
    when "S"
      @direction = "E"
    when "E"
      @direction = "N"
    when "W"
      @direction = "S"
    end
  end

  #turn right instructions
  def turn_right
    case @direction
    when "N"
      @direction = "E"
    when "S"
      @direction = "W"
    when "E"
      @direction = "S"
    when "W"
      @direction = "N"
    end
  end
end

#testing
a = Rover.new(0,0,"N")
a.current_location
a.read_instructions
a.current_location
