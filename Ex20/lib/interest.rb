class Interest

  attr_writer :principal, :time

  INTEREST_RATE = 0.1

  def initialize(&block)
    instance_eval(&block)
  end

  def difference
    difference = "%.2f" % (compound_interest - simple_interest)
  end

  private

  def simple_interest
    simple_interest = @principal * @time * INTEREST_RATE
  end

  def compound_interest
    compound_interest = @principal * (1 + INTEREST_RATE) ** @time
  end

end
