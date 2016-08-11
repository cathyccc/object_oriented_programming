class Paperboy

  attr_accessor :name, :experience, :side
  attr_reader :earnings

  def initialize(name, experience, side, earnings)
    @name = name
    @experience = experience
    @side = side.downcase
    @earnings = earnings
  end

  def quota
    return @experience/2 + 50
  end

  
end

tommy = Paperboy.new("Tommy",0,"odd",1000)
tommy.deliver(2,7)
