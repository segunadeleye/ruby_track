class Interest

  INTEREST_RATE = 0.1

  def initialize(&block)
    @block = block
  end

  def difference
    principal, time = get_input
    s_i = simple_interest(principal, time)
    c_i = compound_interest(principal, time)
    difference = @block.call(c_i, s_i)
    display(principal, time, c_i, s_i, difference)
  end

  private
  
  def get_input
    print "Enter Pricipal Amount: "
    principal = gets.to_f
    print "Enter Number of Years: "
    time = gets.to_f
    principal, time = principal, time
  end

  def simple_interest(principal, time)
    simple_interest = principal * time * INTEREST_RATE
  end

  def compound_interest(principal, time)
    compound_interest = principal * (1 + INTEREST_RATE) ** time
  end

  def display(principal, time, c_i, s_i, difference)
    principal = "%.2f" % principal
    s_i = "%.2f" % s_i
    c_i = "%.2f" % c_i
    difference = "%.2f" % difference

    puts "Pricipal Amount: #{principal}",
         "Time: #{time} years",
         "Interest Rate: 10%",
         "Compound Interest: #{c_i}",
         "Simple Interest: #{s_i}",
         "Interest Difference: #{difference}"
  end

end

interest = Interest.new { |compound_interest, simple_interest| compound_interest - simple_interest }
interest.difference
