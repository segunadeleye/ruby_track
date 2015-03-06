class Factorial
  
  def calculate(n)
    factorial = (1..n).inject  { |product, n| product * n }
    puts factorial
  end

end

factorial = Factorial.new()
factorial.calculate(9)
