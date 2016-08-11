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

  def deliver(start_address,end_address)
    # remember: 2 counters
    # i) going up address
    # ii) counting even houses

    odd_houses = 0
    even_houses = 0
    total_houses = 0
    # counter ii) start_address = start_address

    while start_address <= end_address
      if start_address % 2 == 0
        even_houses += 1
      else
        odd_houses += 1
      end
      start_address += 1
    end

    # separates even vs. odd houses for calculation
    if @side == "even"
      total_houses = even_houses
    else
      total_houses = odd_houses
    end
  end
end

tommy = Paperboy.new("Tommy",0,"odd",1000)
tommy.deliver(2,7)
