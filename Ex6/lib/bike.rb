require_relative 'vehicle'

class Bike < Vehicle

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def change_price(new_price)
    @price = new_price
  end

  def details
    super
    puts "Dealer: #{@dealer}"
  end

end
