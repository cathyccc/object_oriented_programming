class Rover

  attr_accessor :location, :direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
    @total_moves = []
  end

  #how to move and turn
  def read_instructions
    puts "How would you like rover to move?"
    instructions = gets.chomp.upcase
    dir_array = instructions.split("") # => ["L", "L", "M", "M"]
    puts dir_array.length

    counter = 0
    while counter < dir_array.length
      dir_array.each do |movement|
        if movement == "L"
          puts "rover moves left" # placeholder
        elsif movement == "R"
          puts "rover moves right" # placeholder
        else
          puts "rover moves forward" # placeholder
        end
      counter += 1
      end
    end
  end

end

#testing
a = Rover.new(1,2,"N")
a.read_instructions
