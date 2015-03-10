class Factorial
  
  def calculate(n)
    factorial = 1
    unless n == 0
      factorial = (1..n).inject  { |product, n| product * n }
    end
    factorial
  end

end

factorial = Factorial.new()
factorial.calculate(9)
