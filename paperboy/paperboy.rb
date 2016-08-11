class Paperboy

  attr_accessor :name, :experience, :side
  attr_reader :earnings

  def initialize(name, side)
    @name = name
    experience = 0
    @experience = experience
    @side = side.downcase
    earnings = 0
    @earnings = earnings
  end

  def quota
    if @experience > 0
      return @experience/2
    else
      return 50
    end
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

    # calculate earnings
    # if delivery is equal to quota
    if total_houses == quota
      earned_today = quota*0.25
    # if delivery is m more than quota
    elsif total_houses > quota
      earned_today = quota*0.25 + (total_houses-quota)*0.50
    # if delivery is less than quota
    else
      earned_today = (quota*0.25)-2
    end

    @earnings += earned_today
    @experience += total_houses

    puts earned_today
  end

  def report
    puts "I'm #{@name}, I've delived #{@experience} papers and I've earned #{@earnings} so far!"
  end
end

tommy = Paperboy.new("Tommy", "even")
puts tommy.quota
tommy.deliver(101, 220)
puts tommy.earnings
tommy.report
