class Vehicle

  def initialize(name, price)
    @name = name
    @price = price
  end

  def details
    puts "Name: #{@name}"
    puts "Price: #{@price}"
  end

end
